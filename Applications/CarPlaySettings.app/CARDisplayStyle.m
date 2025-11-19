@interface CARDisplayStyle
+ (id)displayStyle:(int64_t)a3 name:(id)a4 enabled:(BOOL)a5;
- (id)description;
@end

@implementation CARDisplayStyle

+ (id)displayStyle:(int64_t)a3 name:(id)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setStyle:a3];
  [v8 setName:v7];

  [v8 setEnabled:v5];

  return v8;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CARDisplayStyle;
  v3 = [(CARDisplayStyle *)&v9 description];
  v4 = [(CARDisplayStyle *)self style];
  v5 = [(CARDisplayStyle *)self name];
  [(CARDisplayStyle *)self enabled];
  v6 = NSStringFromBOOL();
  v7 = [NSString stringWithFormat:@"%@ [style: %ld, name: %@, enabled: %@]", v3, v4, v5, v6];

  return v7;
}

@end