@interface UISApplicationSupportDisplayEdgeInfo
+ (id)clb_displayEdgeInfoForScreenType:(unint64_t)a3;
+ (id)clb_thisDeviceDisplayEdgeInfo;
- (UIEdgeInsets)clb_displayBasedSafeAreaInsets;
- (void)clb_applyDisplayEdgeInfoToSceneSettings:(id)a3;
@end

@implementation UISApplicationSupportDisplayEdgeInfo

+ (id)clb_displayEdgeInfoForScreenType:(unint64_t)a3
{
  v5 = 29.0;
  v6 = 0x4048800000000000;
  v7 = 0x4049800000000000;
  v8 = 0x4048000000000000;
  v9 = 0x4043000000000000;
  v10 = 53.0;
  v11 = 0x4044000000000000;
  switch(a3)
  {
    case 3uLL:
    case 5uLL:
    case 8uLL:
      v12 = 0x4046000000000000;
      goto LABEL_7;
    case 4uLL:
LABEL_19:
      v10 = *&v9;
      goto LABEL_26;
    case 6uLL:
LABEL_18:
      v5 = 30.67;
      v10 = *&v11;
      goto LABEL_26;
    case 7uLL:
      goto LABEL_24;
    case 9uLL:
    case 0xFuLL:
      v12 = 0x4049000000000000;
LABEL_7:
      v8 = v12;
      goto LABEL_11;
    case 0xAuLL:
    case 0x10uLL:
      v8 = 0x4045800000000000;
      goto LABEL_11;
    case 0xBuLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x13uLL:
      v8 = 0x4047800000000000;
      goto LABEL_11;
    case 0xCuLL:
    case 0x12uLL:
      v8 = 0x4043800000000000;
      goto LABEL_11;
    case 0xEuLL:
    case 0x14uLL:
      v8 = 0x4044800000000000;
      goto LABEL_11;
    case 0x15uLL:
    case 0x17uLL:
      v8 = 0x404D800000000000;
      goto LABEL_11;
    case 0x16uLL:
LABEL_17:
      v5 = 27.67;
      goto LABEL_25;
    case 0x18uLL:
LABEL_20:
      v5 = 31.0;
      v10 = *&v7;
      goto LABEL_26;
    case 0x19uLL:
    case 0x1BuLL:
      v13 = 0x404F000000000000;
      goto LABEL_23;
    case 0x1AuLL:
LABEL_21:
      v5 = 27.0;
      v10 = *&v6;
      goto LABEL_26;
    case 0x1CuLL:
      goto LABEL_26;
    case 0x1DuLL:
      v13 = 0x4051000000000000;
LABEL_23:
      v8 = v13;
LABEL_24:
      v5 = 34.0;
      goto LABEL_25;
    case 0x1EuLL:
      v5 = 30.33;
      v10 = 61.0;
      goto LABEL_26;
    default:
LABEL_11:
      v9 = v8;
      v11 = v8;
      v7 = v8;
      v6 = v8;
      switch(a3)
      {
        case 3uLL:
        case 5uLL:
        case 7uLL:
        case 9uLL:
        case 0xBuLL:
        case 0xDuLL:
        case 0xFuLL:
        case 0x11uLL:
        case 0x13uLL:
        case 0x15uLL:
        case 0x17uLL:
        case 0x19uLL:
          goto LABEL_24;
        case 4uLL:
          goto LABEL_19;
        case 6uLL:
          goto LABEL_18;
        case 8uLL:
          v5 = 31.0;
          break;
        case 0xAuLL:
        case 0x10uLL:
          break;
        case 0xCuLL:
        case 0x12uLL:
          v5 = 28.0;
          break;
        case 0xEuLL:
        case 0x14uLL:
          v5 = 29.67;
          break;
        case 0x16uLL:
          goto LABEL_17;
        case 0x18uLL:
          goto LABEL_20;
        case 0x1AuLL:
          goto LABEL_21;
        default:
          if (a3 - 105 >= 0xE)
          {
            v10 = *&v8;
            v5 = 0.0;
            goto LABEL_26;
          }

          if (_os_feature_enabled_impl())
          {
            v5 = 25.0;
          }

          else
          {
            v5 = 20.0;
          }

          break;
      }

LABEL_25:
      v10 = *&v8;
LABEL_26:
      v14 = objc_alloc_init(a1);
      if (!sub_100027F78(a3) && (sub_100027FB0(a3) || sub_100027FA0(a3)))
      {
        if (sub_100027FB0(a3))
        {
          v15 = 0.0;
          if (a3 <= 0x76)
          {
            v15 = dbl_100296338[a3];
          }

          v16 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:v15 left:0.0 bottom:0.0 right:0.0];
          [v14 setPeripheryInsets:v16];
        }

        [v14 setHomeAffordanceOverlayAllowance:&off_1003191A0];
        v17 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:v10 left:0.0 bottom:v5 right:0.0];
        [v14 setSafeAreaInsetsPortrait:v17];
      }

      return v14;
  }
}

+ (id)clb_thisDeviceDisplayEdgeInfo
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025488;
  block[3] = &unk_1002FC8C8;
  block[4] = a1;
  if (qword_1003311C8 != -1)
  {
    dispatch_once(&qword_1003311C8, block);
  }

  v2 = qword_1003311D0;

  return v2;
}

- (void)clb_applyDisplayEdgeInfoToSceneSettings:(id)a3
{
  v4 = a3;
  [(UISApplicationSupportDisplayEdgeInfo *)self clb_displayBasedSafeAreaInsets];
  [v4 setSafeAreaInsetsPortrait:?];
  v5 = [(UISApplicationSupportDisplayEdgeInfo *)self peripheryInsets];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  [v4 setPeripheryInsets:?];

  v6 = [(UISApplicationSupportDisplayEdgeInfo *)self homeAffordanceOverlayAllowance];
  [v6 doubleValue];
  [v4 setHomeAffordanceOverlayAllowance:?];
}

- (UIEdgeInsets)clb_displayBasedSafeAreaInsets
{
  v2 = [(UISApplicationSupportDisplayEdgeInfo *)self safeAreaInsetsPortrait];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end