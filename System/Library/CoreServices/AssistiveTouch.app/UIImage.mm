@interface UIImage
+ (id)scat_cachedMenuImageForImageName:(id)name;
+ (id)scat_imageForTitle:(id)title imageSize:(CGSize)size;
+ (id)scat_singleCharacterImageForTitle:(id)title charactersInUse:(id)use;
+ (void)scat_setCachedMenuImage:(id)image forImageName:(id)name;
@end

@implementation UIImage

+ (void)scat_setCachedMenuImage:(id)image forImageName:(id)name
{
  imageCopy = image;
  nameCopy = name;
  if (!qword_100218A30)
  {
    v6 = objc_alloc_init(NSCache);
    v7 = qword_100218A30;
    qword_100218A30 = v6;
  }

  if (imageCopy && nameCopy)
  {
    [qword_100218A30 setObject:imageCopy forKey:nameCopy];
  }
}

+ (id)scat_cachedMenuImageForImageName:(id)name
{
  if (name)
  {
    v4 = [qword_100218A30 objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)scat_singleCharacterImageForTitle:(id)title charactersInUse:(id)use
{
  titleCopy = title;
  useCopy = use;
  if ([titleCopy length])
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [titleCopy rangeOfComposedCharacterSequenceAtIndex:v8];
      if (!v10)
      {
        break;
      }

      v11 = v9;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v12 = v10;
      v13 = [titleCopy substringWithRange:{v9, v10}];

      if (useCopy && ([useCopy containsObject:v13] & 1) != 0 || (+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "stringByTrimmingCharactersInSet:", v14), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v14, !v16))
      {
        v8 = v11 + v12;
        v7 = v13;
        if (v8 < [titleCopy length])
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  if ([v13 length])
  {
    +[SCATModernMenuItem imageSize];
    v18 = v17;
    v20 = v19;
    v33[0] = NSFontAttributeName;
    v21 = [UIFont systemFontOfSize:45.0];
    v34[0] = v21;
    v33[1] = NSForegroundColorAttributeName;
    v22 = +[UIColor whiteColor];
    v34[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

    [v13 sizeWithAttributes:v23];
    v25 = v24;
    v27 = v26;
    v28 = +[UIScreen mainScreen];
    [v28 scale];
    v30 = v29;
    v36.width = v18;
    v36.height = v20;
    UIGraphicsBeginImageContextWithOptions(v36, 0, v30);

    [v13 drawInRect:v23 withAttributes:{(v18 - v25) * 0.5, (v20 - v27) * 0.5, v25, v27}];
    v31 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [useCopy addObject:v13];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)scat_imageForTitle:(id)title imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  titleCopy = title;
  if ([titleCopy length])
  {
    v19[0] = NSFontAttributeName;
    v7 = [UIFont systemFontOfSize:12.0];
    v20[0] = v7;
    v19[1] = NSForegroundColorAttributeName;
    v8 = +[UIColor whiteColor];
    v20[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

    [titleCopy sizeWithAttributes:v9];
    v11 = v10;
    v13 = v12;
    v14 = +[UIScreen mainScreen];
    [v14 scale];
    v16 = v15;
    v22.width = width;
    v22.height = height;
    UIGraphicsBeginImageContextWithOptions(v22, 0, v16);

    [titleCopy drawInRect:v9 withAttributes:{(width - v11) * 0.5, (height - v13) * 0.5, v11, v13}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end