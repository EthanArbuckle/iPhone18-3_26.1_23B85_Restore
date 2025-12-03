@interface NSAttributedString
- (double)tui_widthAsTitle;
- (id)tui_attributedTitleForButtonType:(unint64_t)type;
@end

@implementation NSAttributedString

- (id)tui_attributedTitleForButtonType:(unint64_t)type
{
  v4 = +[TUIFontSpec defaultFontSpec];
  font = [v4 font];

  v6 = [UIFont systemFontOfSize:15.0];
  v7 = [NSMutableAttributedString alloc];
  string = [(NSAttributedString *)self string];
  v20 = NSFontAttributeName;
  v21 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v10 = [v7 initWithString:string attributes:v9];

  v11 = [(NSAttributedString *)self length];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_87CDC;
  v17[3] = &unk_260728;
  v18 = font;
  v12 = v10;
  v19 = v12;
  v13 = font;
  [(NSAttributedString *)self enumerateAttributesInRange:0 options:v11 usingBlock:0, v17];
  v14 = v19;
  v15 = v12;

  return v12;
}

- (double)tui_widthAsTitle
{
  v3 = [UIFont systemFontOfSize:15.0];
  v4 = [NSMutableAttributedString alloc];
  string = [(NSAttributedString *)self string];
  v18 = NSFontAttributeName;
  v19 = v3;
  v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v7 = [v4 initWithString:string attributes:v6];

  v8 = [(NSAttributedString *)self length];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_14355C;
  v16 = &unk_262820;
  v17 = v7;
  v9 = v7;
  [(NSAttributedString *)self enumerateAttributesInRange:0 options:v8 usingBlock:0, &v13];
  [v9 boundingRectWithSize:0 options:0 context:{3.40282347e38, 3.40282347e38, v13, v14, v15, v16}];
  UICeilToViewScale();
  v11 = v10;

  return v11;
}

@end