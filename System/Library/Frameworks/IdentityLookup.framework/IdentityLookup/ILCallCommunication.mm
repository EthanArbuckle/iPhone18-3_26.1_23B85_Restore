@interface ILCallCommunication
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation ILCallCommunication

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ILCallCommunication;
  v4 = [(ILCommunication *)&v9 description];
  v8.receiver = self;
  v8.super_class = ILCallCommunication;
  v5 = [(ILCommunication *)&v8 description];
  v6 = [v3 stringWithFormat:@"<%@ communications=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILCallCommunication *)self isEqualToCallCommunication:equalCopy];

  return v5;
}

@end