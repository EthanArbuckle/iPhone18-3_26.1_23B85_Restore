@interface CTPriVersion
- (CTPriVersion)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPriVersion

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTPriVersion *)self majorVersion];
  [v3 appendFormat:@", major=%@", v4];

  v5 = [(CTPriVersion *)self minorVersion];
  [v3 appendFormat:@", minor=%@", v5];

  v6 = [(CTPriVersion *)self releaseVersion];
  [v3 appendFormat:@", release=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTPriVersion *)self majorVersion];
  v6 = [v5 copy];
  [v4 setMajorVersion:v6];

  v7 = [(CTPriVersion *)self minorVersion];
  v8 = [v7 copy];
  [v4 setMinorVersion:v8];

  v9 = [(CTPriVersion *)self releaseVersion];
  v10 = [v9 copy];
  [v4 setReleaseVersion:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTPriVersion *)self majorVersion];
  [v4 encodeObject:v5 forKey:@"major"];

  v6 = [(CTPriVersion *)self minorVersion];
  [v4 encodeObject:v6 forKey:@"minor"];

  v7 = [(CTPriVersion *)self releaseVersion];
  [v4 encodeObject:v7 forKey:@"release"];
}

- (CTPriVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTPriVersion;
  v5 = [(CTPriVersion *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"major"];
    majorVersion = v5->_majorVersion;
    v5->_majorVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minor"];
    minorVersion = v5->_minorVersion;
    v5->_minorVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"release"];
    releaseVersion = v5->_releaseVersion;
    v5->_releaseVersion = v10;
  }

  return v5;
}

@end