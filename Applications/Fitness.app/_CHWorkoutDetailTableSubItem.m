@interface _CHWorkoutDetailTableSubItem
+ (id)_emptyItem;
- (BOOL)_fitsWidth:(double)a3;
@end

@implementation _CHWorkoutDetailTableSubItem

- (BOOL)_fitsWidth:(double)a3
{
  v5 = [(_CHWorkoutDetailTableSubItem *)self titleString];
  v14 = NSFontAttributeName;
  v6 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  v15 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v5 sizeWithAttributes:v7];
  v9 = v8;

  v10 = [(_CHWorkoutDetailTableSubItem *)self valueAttrString];
  [v10 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
  v12 = v11;

  return v12 < a3 && v9 < a3;
}

+ (id)_emptyItem
{
  v2 = objc_alloc_init(a1);
  [v2 setTitleString:0];
  [v2 setValueAttrString:0];
  [v2 setUpdateBlock:&stru_10083BF28];

  return v2;
}

@end