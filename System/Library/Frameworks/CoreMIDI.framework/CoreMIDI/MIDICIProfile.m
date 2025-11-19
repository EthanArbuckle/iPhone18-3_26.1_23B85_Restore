@interface MIDICIProfile
- (MIDICIProfile)initWithCoder:(id)a3;
- (MIDICIProfile)initWithData:(NSData *)data;
- (MIDICIProfile)initWithData:(NSData *)data name:(NSString *)inName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIDICIProfile

- (MIDICIProfile)initWithData:(NSData *)data name:(NSString *)inName
{
  v6 = data;
  v7 = inName;
  v14.receiver = self;
  v14.super_class = MIDICIProfile;
  v8 = [(MIDICIProfile *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithData:v6];
    profileID = v8->_profileID;
    v8->_profileID = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithString:v7];
    name = v8->_name;
    v8->_name = v11;
  }

  return v8;
}

- (MIDICIProfile)initWithData:(NSData *)data
{
  v4 = data;
  CIProfileBytesToName(__p, [(NSData *)v4 bytes], [(NSData *)v4 length]);
  if (v10 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v7 = [(MIDICIProfile *)self initWithData:v4 name:v6];

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_profileID forKey:@"profileID"];
  [v4 encodeObject:self->_name forKey:@"name"];
}

- (MIDICIProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MIDICIProfile;
  v5 = [(MIDICIProfile *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileID"];
    profileID = v5->_profileID;
    v5->_profileID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

@end