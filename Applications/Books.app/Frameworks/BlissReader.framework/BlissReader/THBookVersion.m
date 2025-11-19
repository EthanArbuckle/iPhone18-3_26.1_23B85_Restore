@interface THBookVersion
+ (THBookVersion)bookVersionWithVersionString:(id)a3;
+ (id)newUnversionedBookVersion;
+ (id)unversionedBookVersion;
- (BOOL)isEqualToBookVersion:(id)a3;
- (BOOL)isStrictlyNewerThanBookVersion:(id)a3;
- (BOOL)p_componentIsValid:(id)a3;
- (THBookVersion)initWithString:(id)a3;
- (id)description;
- (void)dealloc;
- (void)p_parseString;
@end

@implementation THBookVersion

+ (THBookVersion)bookVersionWithVersionString:(id)a3
{
  v3 = [[THBookVersion alloc] initWithString:a3];

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

- (THBookVersion)initWithString:(id)a3
{
  v8.receiver = self;
  v8.super_class = THBookVersion;
  v4 = [(THBookVersion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = &stru_471858;
    }

    [(THBookVersion *)v4 setVersionString:v6];
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

- (BOOL)p_componentIsValid:(id)a3
{
  if (![a3 length] || (objc_msgSend(a3, "integerValue") & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [a3 integerValue]);

  return [a3 isEqualToString:v4];
}

- (id)description
{
  if ([(NSString *)[(THBookVersion *)self versionString] isEqualToString:&stru_471858])
  {
    return @"(unversioned)";
  }

  return [(THBookVersion *)self versionString];
}

- (BOOL)isStrictlyNewerThanBookVersion:(id)a3
{
  if (-[THBookVersion isValid](self, "isValid") && [a3 isValid])
  {
    if (![a3 isUnversioned] || -[THBookVersion isUnversioned](self, "isUnversioned"))
    {
      if ([(THBookVersion *)self isUnversioned])
      {
LABEL_6:
        LOBYTE(v5) = 0;
        return v5;
      }

      v6 = [(THBookVersion *)self majorVersion];
      if (v6 <= [a3 majorVersion])
      {
        v7 = [(THBookVersion *)self majorVersion];
        if (v7 != [a3 majorVersion])
        {
          goto LABEL_6;
        }

        v8 = [(THBookVersion *)self minorVersion];
        if (v8 <= [a3 minorVersion])
        {
          v9 = [(THBookVersion *)self minorVersion];
          if (v9 == [a3 minorVersion])
          {
            v10 = [(THBookVersion *)self subMinorVersion];
            LOBYTE(v5) = v10 > [a3 subMinorVersion];
            return v5;
          }

          goto LABEL_6;
        }
      }
    }

    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [(THBookVersion *)self isValid];
  if (v5)
  {
    LOBYTE(v5) = [a3 isValid] ^ 1;
  }

  return v5;
}

- (BOOL)isEqualToBookVersion:(id)a3
{
  v5 = [(THBookVersion *)self isValid];
  if (v5 != [a3 isValid])
  {
    return 0;
  }

  v6 = [(THBookVersion *)self isUnversioned];
  if (v6 != [a3 isUnversioned])
  {
    return 0;
  }

  v7 = [(THBookVersion *)self majorVersion];
  if (v7 != [a3 majorVersion])
  {
    return 0;
  }

  v8 = [(THBookVersion *)self minorVersion];
  if (v8 != [a3 minorVersion])
  {
    return 0;
  }

  v9 = [(THBookVersion *)self subMinorVersion];
  if (v9 != [a3 subMinorVersion])
  {
    return 0;
  }

  v10 = [(THBookVersion *)self versionString];
  v11 = [a3 versionString];

  return [(NSString *)v10 isEqualToString:v11];
}

@end