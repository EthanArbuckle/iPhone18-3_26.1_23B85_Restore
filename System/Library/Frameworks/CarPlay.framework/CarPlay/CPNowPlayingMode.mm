@interface CPNowPlayingMode
+ (CPNowPlayingMode)defaultNowPlayingMode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNowPlayingMode:(id)mode;
- (CPNowPlayingMode)init;
- (CPNowPlayingMode)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingMode

- (CPNowPlayingMode)init
{
  v6.receiver = self;
  v6.super_class = CPNowPlayingMode;
  v2 = [(CPNowPlayingMode *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

+ (CPNowPlayingMode)defaultNowPlayingMode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CPNowPlayingMode_defaultNowPlayingMode__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultNowPlayingMode_onceToken != -1)
  {
    dispatch_once(&defaultNowPlayingMode_onceToken, block);
  }

  v2 = defaultNowPlayingMode___defaultMode;

  return v2;
}

uint64_t __41__CPNowPlayingMode_defaultNowPlayingMode__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = defaultNowPlayingMode___defaultMode;
  defaultNowPlayingMode___defaultMode = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingMode *)self isEqualToNowPlayingMode:equalCopy];

  return v5;
}

- (BOOL)isEqualToNowPlayingMode:(id)mode
{
  modeCopy = mode;
  identifier = [(CPNowPlayingMode *)self identifier];
  identifier2 = [modeCopy identifier];

  LOBYTE(modeCopy) = [identifier isEqual:identifier2];
  return modeCopy;
}

- (unint64_t)hash
{
  identifier = [(CPNowPlayingMode *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (CPNowPlayingMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPNowPlayingMode;
  v5 = [(CPNowPlayingMode *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPNowPlayingMode *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPNowPlayingModeIdentifier"];
}

@end