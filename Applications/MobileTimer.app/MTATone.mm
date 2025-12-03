@interface MTATone
- (MTATone)initWithIdentifier:(id)identifier;
- (NSString)name;
@end

@implementation MTATone

- (MTATone)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MTATone;
  v6 = [(MTATone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_defaultTone = 0;
  }

  return v7;
}

- (NSString)name
{
  if ([(MTATone *)self isDefaultTone])
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"DEFAULT_TONE_FORMAT" value:&stru_1000AEF10 table:0];
    toneName = [(MTATone *)self toneName];
    toneName2 = [NSString stringWithFormat:v4, toneName];
  }

  else
  {
    toneName2 = [(MTATone *)self toneName];
  }

  return toneName2;
}

@end