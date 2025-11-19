@interface UISDisplaySingleRectShape
+ (id)clb_displayShapeForScreenType:(unint64_t)a3;
+ (id)clb_thisDeviceDisplayShape;
@end

@implementation UISDisplaySingleRectShape

+ (id)clb_thisDeviceDisplayShape
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020FD0;
  block[3] = &unk_1002FC8C8;
  block[4] = a1;
  if (qword_100331140 != -1)
  {
    dispatch_once(&qword_100331140, block);
  }

  v2 = qword_100331148;

  return v2;
}

+ (id)clb_displayShapeForScreenType:(unint64_t)a3
{
  v4 = sub_100021020(a3);
  if (a3 <= 0x10 && ((1 << a3) & 0x18600) != 0)
  {
    v4 = v4 * 1.04166667;
  }

  v5 = 0.0;
  v6 = 90.0;
  v7 = 627.0;
  v8 = 249.0;
  switch(a3)
  {
    case 3uLL:
    case 4uLL:
      goto LABEL_18;
    case 5uLL:
    case 6uLL:
      v7 = 628.0;
      v8 = 307.0;
      goto LABEL_18;
    case 7uLL:
    case 8uLL:
      v6 = 64.0;
      v7 = 454.0;
      v8 = 187.0;
      goto LABEL_18;
    case 9uLL:
    case 0xAuLL:
      v6 = 103.0;
      v7 = 678.0;
      v8 = 223.5;
      goto LABEL_18;
    case 0xBuLL:
    case 0xCuLL:
      v6 = 96.0;
      v7 = 630.0;
      v8 = 270.0;
      goto LABEL_18;
    case 0xDuLL:
    case 0xEuLL:
      v6 = 96.0;
      v7 = 628.0;
      v8 = 328.0;
      goto LABEL_18;
    case 0xFuLL:
    case 0x10uLL:
      v6 = 112.0;
      v7 = 522.0;
      v8 = 301.5;
      goto LABEL_18;
    case 0x11uLL:
    case 0x12uLL:
      v6 = 101.0;
      v7 = 484.0;
      v8 = 343.0;
      goto LABEL_18;
    case 0x13uLL:
    case 0x14uLL:
      v6 = 101.0;
      v7 = 484.0;
      v8 = 400.0;
      goto LABEL_18;
    case 0x15uLL:
    case 0x16uLL:
      v6 = 110.0;
      v7 = 375.0;
      v5 = 34.0;
      v8 = 402.0;
      goto LABEL_18;
    case 0x17uLL:
    case 0x18uLL:
      v6 = 110.0;
      v7 = 376.0;
      v5 = 34.0;
      v8 = 457.0;
      goto LABEL_18;
    case 0x19uLL:
    case 0x1AuLL:
      v6 = 110.0;
      v7 = 375.0;
      v5 = 42.0;
      v8 = 415.0;
      goto LABEL_18;
    case 0x1BuLL:
    case 0x1CuLL:
      v6 = 110.0;
      v7 = 376.0;
      v5 = 42.0;
      v8 = 472.0;
      goto LABEL_18;
    case 0x1DuLL:
    case 0x1EuLL:
      v6 = 110.0;
      v7 = 376.0;
      v5 = 60.0;
      v8 = 442.0;
LABEL_18:
      v16.origin.x = v8;
      v16.origin.y = v5;
      v16.size.width = v7;
      v16.size.height = v6;
      v9 = CGRectGetMinX(v16) / v4;
      v17.origin.x = v8;
      v17.origin.y = v5;
      v17.size.width = v7;
      v17.size.height = v6;
      v10 = CGRectGetMinY(v17) / v4;
      v18.origin.x = v8;
      v18.origin.y = v5;
      v18.size.width = v7;
      v18.size.height = v6;
      v11 = CGRectGetWidth(v18) / v4;
      v19.origin.x = v8;
      v19.origin.y = v5;
      v19.size.width = v7;
      v19.size.height = v6;
      v12 = [[UISDisplaySingleRectShape alloc] initWithRect:{v9, v10, v11, CGRectGetHeight(v19) / v4}];
      break;
    default:
      if (sub_100027FB0(a3) && !sub_100027F78(a3))
      {
        v14 = +[CLFLog commonLog];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1002853B4(a3, v14);
        }
      }

      v12 = 0;
      break;
  }

  return v12;
}

@end