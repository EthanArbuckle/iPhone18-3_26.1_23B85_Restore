@interface NSMutableAttributedString
+ (id)linkedAttributedFromString:(id)string withFont:(id)font;
+ (id)linkedAttributedFromString:(id)string withFont:(id)font textColor:(id)color;
@end

@implementation NSMutableAttributedString

+ (id)linkedAttributedFromString:(id)string withFont:(id)font
{
  fontCopy = font;
  stringCopy = string;
  v8 = +[UIColor labelColor];
  v9 = [self linkedAttributedFromString:stringCopy withFont:fontCopy textColor:v8];

  return v9;
}

+ (id)linkedAttributedFromString:(id)string withFont:(id)font textColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  stringCopy = &stru_1000E2210;
  if (string)
  {
    stringCopy = string;
  }

  v10 = stringCopy;
  if (fontCopy)
  {
    v11 = fontCopy;
  }

  else
  {
    +[UIFont systemFontSize];
    v11 = [UIFont systemFontOfSize:?];
  }

  v12 = v11;
  v13 = [NSMutableAttributedString alloc];
  v26[0] = NSFontAttributeName;
  v26[1] = NSForegroundColorAttributeName;
  v27[0] = v12;
  v27[1] = colorCopy;
  v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v15 = [v13 initWithString:v10 attributes:v14];

  v25 = 0;
  v16 = [NSDataDetector dataDetectorWithTypes:32 error:&v25];
  v17 = v25;
  v18 = [(__CFString *)v10 length];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100005F98;
  v23[3] = &unk_1000DE520;
  v19 = v15;
  v24 = v19;
  [v16 enumerateMatchesInString:v10 options:0 range:0 usingBlock:{v18, v23}];

  v20 = v24;
  v21 = v19;

  return v19;
}

@end