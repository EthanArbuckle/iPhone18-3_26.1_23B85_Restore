@interface MTATone
- (MTATone)initWithIdentifier:(id)a3;
- (NSString)name;
@end

@implementation MTATone

- (MTATone)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTATone;
  v6 = [(MTATone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
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
    v5 = [(MTATone *)self toneName];
    v6 = [NSString stringWithFormat:v4, v5];
  }

  else
  {
    v6 = [(MTATone *)self toneName];
  }

  return v6;
}

@end