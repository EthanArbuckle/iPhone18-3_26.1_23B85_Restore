@interface CTPriVersion
- (CTPriVersion)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPriVersion

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  majorVersion = [(CTPriVersion *)self majorVersion];
  [v3 appendFormat:@", major=%@", majorVersion];

  minorVersion = [(CTPriVersion *)self minorVersion];
  [v3 appendFormat:@", minor=%@", minorVersion];

  releaseVersion = [(CTPriVersion *)self releaseVersion];
  [v3 appendFormat:@", release=%@", releaseVersion];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  majorVersion = [(CTPriVersion *)self majorVersion];
  v6 = [majorVersion copy];
  [v4 setMajorVersion:v6];

  minorVersion = [(CTPriVersion *)self minorVersion];
  v8 = [minorVersion copy];
  [v4 setMinorVersion:v8];

  releaseVersion = [(CTPriVersion *)self releaseVersion];
  v10 = [releaseVersion copy];
  [v4 setReleaseVersion:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  majorVersion = [(CTPriVersion *)self majorVersion];
  [coderCopy encodeObject:majorVersion forKey:@"major"];

  minorVersion = [(CTPriVersion *)self minorVersion];
  [coderCopy encodeObject:minorVersion forKey:@"minor"];

  releaseVersion = [(CTPriVersion *)self releaseVersion];
  [coderCopy encodeObject:releaseVersion forKey:@"release"];
}

- (CTPriVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTPriVersion;
  v5 = [(CTPriVersion *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"major"];
    majorVersion = v5->_majorVersion;
    v5->_majorVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minor"];
    minorVersion = v5->_minorVersion;
    v5->_minorVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"release"];
    releaseVersion = v5->_releaseVersion;
    v5->_releaseVersion = v10;
  }

  return v5;
}

@end