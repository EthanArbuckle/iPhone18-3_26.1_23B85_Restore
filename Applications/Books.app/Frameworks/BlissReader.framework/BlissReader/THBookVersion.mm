@interface THBookVersion
+ (THBookVersion)bookVersionWithVersionString:(id)string;
+ (id)newUnversionedBookVersion;
+ (id)unversionedBookVersion;
- (BOOL)isEqualToBookVersion:(id)version;
- (BOOL)isStrictlyNewerThanBookVersion:(id)version;
- (BOOL)p_componentIsValid:(id)valid;
- (THBookVersion)initWithString:(id)string;
- (id)description;
- (void)dealloc;
- (void)p_parseString;
@end

@implementation THBookVersion

+ (THBookVersion)bookVersionWithVersionString:(id)string
{
  v3 = [[THBookVersion alloc] initWithString:string];

  return v3;
}

+ (id)newUnversionedBookVersion
{
  v2 = [THBookVersion alloc];

  return [(THBookVersion *)v2 initWithString:&stru_471858];
}

+ (id)unversionedBookVersion
{
  result = qword_5678A8;
  if (!qword_5678A8)
  {
    result = +[THBookVersion newUnversionedBookVersion];
    qword_5678A8 = result;
  }

  return result;
}

- (THBookVersion)initWithString:(id)string
{
  v8.receiver = self;
  v8.super_class = THBookVersion;
  v4 = [(THBookVersion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (string)
    {
      stringCopy = string;
    }

    else
    {
      stringCopy = &stru_471858;
    }

    [(THBookVersion *)v4 setVersionString:stringCopy];
    [(THBookVersion *)v5 p_parseString];
  }

  return v5;
}

- (void)dealloc
{
  [(THBookVersion *)self setVersionString:0];
  v3.receiver = self;
  v3.super_class = THBookVersion;
  [(THBookVersion *)&v3 dealloc];
}

- (void)p_parseString
{
  if (![(THBookVersion *)self versionString])
  {
    goto LABEL_14;
  }

  if ([(NSString *)[(THBookVersion *)self versionString] isEqualToString:&stru_471858])
  {
    [(THBookVersion *)self setMajorVersion:0];
    [(THBookVersion *)self setMinorVersion:0];
    [(THBookVersion *)self setSubMinorVersion:0];
    v3 = 1;
    [(THBookVersion *)self setIsUnversioned:1];
    goto LABEL_15;
  }

  v4 = [(NSString *)[(THBookVersion *)self versionString] componentsSeparatedByString:@"."];
  v5 = [(NSArray *)v4 count];
  if (v5 >= 4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_14;
  }

  -[THBookVersion setMajorVersion:](self, "setMajorVersion:", [-[NSArray objectAtIndex:](v4 objectAtIndex:{0), "integerValue"}]);
  v3 = [(THBookVersion *)self p_componentIsValid:[(NSArray *)v4 objectAtIndex:0]];
  if (v6 != 1)
  {
    -[THBookVersion setMinorVersion:](self, "setMinorVersion:", [-[NSArray objectAtIndex:](v4 objectAtIndex:{1), "integerValue"}]);
    if (v3)
    {
      v3 = [(THBookVersion *)self p_componentIsValid:[(NSArray *)v4 objectAtIndex:1]];
    }

    if (v6 == 3)
    {
      -[THBookVersion setSubMinorVersion:](self, "setSubMinorVersion:", [-[NSArray objectAtIndex:](v4 objectAtIndex:{2), "integerValue"}]);
      if (v3)
      {
        v3 = [(THBookVersion *)self p_componentIsValid:[(NSArray *)v4 objectAtIndex:2]];
      }
    }
  }

LABEL_15:

  [(THBookVersion *)self setIsValid:v3];
}

- (BOOL)p_componentIsValid:(id)valid
{
  if (![valid length] || (objc_msgSend(valid, "integerValue") & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [valid integerValue]);

  return [valid isEqualToString:v4];
}

- (id)description
{
  if ([(NSString *)[(THBookVersion *)self versionString] isEqualToString:&stru_471858])
  {
    return @"(unversioned)";
  }

  return [(THBookVersion *)self versionString];
}

- (BOOL)isStrictlyNewerThanBookVersion:(id)version
{
  if (-[THBookVersion isValid](self, "isValid") && [version isValid])
  {
    if (![version isUnversioned] || -[THBookVersion isUnversioned](self, "isUnversioned"))
    {
      if ([(THBookVersion *)self isUnversioned])
      {
LABEL_6:
        LOBYTE(isValid) = 0;
        return isValid;
      }

      majorVersion = [(THBookVersion *)self majorVersion];
      if (majorVersion <= [version majorVersion])
      {
        majorVersion2 = [(THBookVersion *)self majorVersion];
        if (majorVersion2 != [version majorVersion])
        {
          goto LABEL_6;
        }

        minorVersion = [(THBookVersion *)self minorVersion];
        if (minorVersion <= [version minorVersion])
        {
          minorVersion2 = [(THBookVersion *)self minorVersion];
          if (minorVersion2 == [version minorVersion])
          {
            subMinorVersion = [(THBookVersion *)self subMinorVersion];
            LOBYTE(isValid) = subMinorVersion > [version subMinorVersion];
            return isValid;
          }

          goto LABEL_6;
        }
      }
    }

    LOBYTE(isValid) = 1;
    return isValid;
  }

  isValid = [(THBookVersion *)self isValid];
  if (isValid)
  {
    LOBYTE(isValid) = [version isValid] ^ 1;
  }

  return isValid;
}

- (BOOL)isEqualToBookVersion:(id)version
{
  isValid = [(THBookVersion *)self isValid];
  if (isValid != [version isValid])
  {
    return 0;
  }

  isUnversioned = [(THBookVersion *)self isUnversioned];
  if (isUnversioned != [version isUnversioned])
  {
    return 0;
  }

  majorVersion = [(THBookVersion *)self majorVersion];
  if (majorVersion != [version majorVersion])
  {
    return 0;
  }

  minorVersion = [(THBookVersion *)self minorVersion];
  if (minorVersion != [version minorVersion])
  {
    return 0;
  }

  subMinorVersion = [(THBookVersion *)self subMinorVersion];
  if (subMinorVersion != [version subMinorVersion])
  {
    return 0;
  }

  versionString = [(THBookVersion *)self versionString];
  versionString2 = [version versionString];

  return [(NSString *)versionString isEqualToString:versionString2];
}

@end