@interface CARDisplayStyle
+ (id)displayStyle:(int64_t)style name:(id)name enabled:(BOOL)enabled;
- (id)description;
@end

@implementation CARDisplayStyle

+ (id)displayStyle:(int64_t)style name:(id)name enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  nameCopy = name;
  v8 = objc_opt_new();
  [v8 setStyle:style];
  [v8 setName:nameCopy];

  [v8 setEnabled:enabledCopy];

  return v8;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CARDisplayStyle;
  v3 = [(CARDisplayStyle *)&v9 description];
  style = [(CARDisplayStyle *)self style];
  name = [(CARDisplayStyle *)self name];
  [(CARDisplayStyle *)self enabled];
  v6 = NSStringFromBOOL();
  v7 = [NSString stringWithFormat:@"%@ [style: %ld, name: %@, enabled: %@]", v3, style, name, v6];

  return v7;
}

@end