@interface MainWindowControlHeaderView
+ (CGImage)imageForString:(id)string atRect:(CGRect)rect withSize:(CGSize)size;
+ (CGImage)maskImageForImage:(id)image atPoint:(CGPoint)point withSize:(CGSize)size;
+ (double)spacerWidthForWindowWidth:(double)width;
+ (id)badgedCalendarIcon:(BOOL)icon;
+ (id)customBadgedButtonWithImage:(id)image target:(id)target selected:(BOOL)selected insets:(UIEdgeInsets)insets action:(SEL)action;
+ (id)inboxBadgeForCount:(unint64_t)count;
+ (id)inboxImageForCount:(unint64_t)count selected:(BOOL)selected forToolbar:(BOOL)toolbar bold:(BOOL)bold;
+ (id)spacer;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MainWindowControlHeaderView)initWithFrame:(CGRect)frame;
- (id)calendarBarButtonItem;
- (id)inboxBarButtonItem;
- (void)layoutForWidth:(double)width;
- (void)updateButtonStateForSidebar:(unint64_t)sidebar;
- (void)updateErrorState:(BOOL)state;
- (void)updateInboxCount:(unint64_t)count;
- (void)updateToolbarItems;
@end

@implementation MainWindowControlHeaderView

- (void)updateToolbarItems
{
  if (CalUIKitNavBarEnabled() && ([(MainWindowControlHeaderView *)self delegate], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    delegate = [(MainWindowControlHeaderView *)self delegate];
    calendarBarButtonItem = [(MainWindowControlHeaderView *)self calendarBarButtonItem];
    v16[0] = calendarBarButtonItem;
    inboxBarButtonItem = [(MainWindowControlHeaderView *)self inboxBarButtonItem];
    listViewBarButton = self->_listViewBarButton;
    v16[1] = inboxBarButtonItem;
    v16[2] = listViewBarButton;
    v9 = [NSArray arrayWithObjects:v16 count:3];
    newEventBarButton = self->_newEventBarButton;
    v10 = [NSArray arrayWithObjects:&newEventBarButton count:1];
    [delegate setNavigationItems:v9 additionalItems:v10];
  }

  else
  {
    delegate = [(MainWindowControlHeaderView *)self calendarBarButtonItem];
    calendarBarButtonItem = [(NSArray *)self->_spacers objectAtIndexedSubscript:0, delegate];
    v14[1] = calendarBarButtonItem;
    inboxBarButtonItem = [(MainWindowControlHeaderView *)self inboxBarButtonItem];
    v14[2] = inboxBarButtonItem;
    v9 = [(NSArray *)self->_spacers objectAtIndexedSubscript:1];
    v11 = self->_listViewBarButton;
    v14[3] = v9;
    v14[4] = v11;
    v10 = [(NSArray *)self->_spacers objectAtIndexedSubscript:2];
    v12 = self->_newEventBarButton;
    v14[5] = v10;
    v14[6] = v12;
    v13 = [NSArray arrayWithObjects:v14 count:7];
    [(UIToolbar *)self->_toolbar setItems:v13];
  }
}

+ (id)spacer
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 primaryAction:0];
  [v2 setWidth:15.0];

  return v2;
}

+ (CGImage)imageForString:(id)string atRect:(CGRect)rect withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringCopy = string;
  v12 = +[UIScreen mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = vcvtpd_u64_f64(width * v14);
  v16 = vcvtpd_u64_f64(height * v14);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v19 = CGBitmapContextCreate(0, v15, v16, 8uLL, AlignedBytesPerRow, DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  if (v19)
  {
    UIGraphicsPushContext(v19);
    v24.size.width = v15;
    v24.size.height = v16;
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    CGContextClearRect(v19, v24);
    CGContextScaleCTM(v19, v14, v14);
    CGContextGetCTM(&v23, v19);
    CGContextSetBaseCTM();
    v20 = +[UIColor whiteColor];
    CGContextSetFillColorWithColor(v19, [v20 CGColor]);

    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = width;
    v25.size.height = height;
    CGContextFillRect(v19, v25);
    [stringCopy drawInRect:{x, y, v8, v7}];
    Image = CGBitmapContextCreateImage(v19);
    UIGraphicsPopContext();
    CGContextRelease(v19);
  }

  else
  {
    Image = 0;
  }

  return Image;
}

+ (CGImage)maskImageForImage:(id)image atPoint:(CGPoint)point withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = point.y;
  x = point.x;
  imageCopy = image;
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = vcvtpd_u64_f64(width * v12);
  v14 = vcvtpd_u64_f64(height * v12);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v17 = CGBitmapContextCreate(0, v13, v14, 8uLL, AlignedBytesPerRow, DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  if (v17)
  {
    UIGraphicsPushContext(v17);
    v22.size.width = v13;
    v22.size.height = v14;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    CGContextClearRect(v17, v22);
    CGContextScaleCTM(v17, v12, v12);
    CGContextGetCTM(&v21, v17);
    CGContextSetBaseCTM();
    v18 = +[UIColor whiteColor];
    CGContextSetFillColorWithColor(v17, [v18 CGColor]);

    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = width;
    v23.size.height = height;
    CGContextFillRect(v17, v23);
    [imageCopy drawAtPoint:{x, y}];
    Image = CGBitmapContextCreateImage(v17);
    UIGraphicsPopContext();
    CGContextRelease(v17);
  }

  else
  {
    Image = 0;
  }

  return Image;
}

+ (id)inboxImageForCount:(unint64_t)count selected:(BOOL)selected forToolbar:(BOOL)toolbar bold:(BOOL)bold
{
  boldCopy = bold;
  toolbarCopy = toolbar;
  selectedCopy = selected;
  if (bold)
  {
    v11 = 6;
  }

  else
  {
    v11 = 4;
  }

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:v11 weight:3 scale:17.0];
  v13 = [UIImage systemImageNamed:@"tray" withConfiguration:v12];
  imageFlippedForRightToLeftLayoutDirection = [v13 imageFlippedForRightToLeftLayoutDirection];

  if (!count)
  {
    v16 = imageFlippedForRightToLeftLayoutDirection;
    goto LABEL_60;
  }

  if (qword_100251A10 != -1)
  {
    sub_1001703B4();
  }

  if (count <= 0x63)
  {
    v17 = @"unselected";
    if (selectedCopy)
    {
      v17 = @"selected";
    }

    boldCopy = [NSString stringWithFormat:@"%tu-%@-%i", count, v17, boldCopy];
  }

  else
  {
    boldCopy = @"over-max";
  }

  v16 = [qword_100251A08 objectForKey:boldCopy];
  if (!v16)
  {
    v95 = toolbarCopy;
    selfCopy = self;
    if (count >= 0x63)
    {
      countCopy = 99;
    }

    else
    {
      countCopy = count;
    }

    v19 = [NSNumber numberWithUnsignedInteger:countCopy];
    v20 = [NSNumberFormatter localizedStringFromNumber:v19 numberStyle:1];

    v90 = v20;
    if (count <= 0x63)
    {
      v87 = v20;
    }

    else
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"%@+" value:&stru_1002133B8 table:0];
      v87 = [NSString localizedStringWithFormat:v22, v20];
    }

    v23 = objc_alloc_init(NSMutableParagraphStyle);
    [v23 setAlignment:1];
    v24 = [NSAttributedString alloc];
    v88 = v23;
    if (v95)
    {
      v100[0] = NSFontAttributeName;
      v25 = &UIFontWeightMedium;
      if (boldCopy)
      {
        v25 = &UIFontWeightSemibold;
      }

      v26 = [UIFont systemFontOfSize:17.0 weight:*v25];
      v101[0] = v26;
      v101[1] = v23;
      v100[1] = NSParagraphStyleAttributeName;
      v100[2] = NSForegroundColorAttributeName;
      v27 = +[UIColor blackColor];
      v101[2] = v27;
      v28 = v101;
      v29 = v100;
    }

    else
    {
      v98[0] = NSFontAttributeName;
      v26 = [UIFont systemFontOfSize:8.0 weight:UIFontWeightSemibold];
      v99[0] = v26;
      v99[1] = v23;
      v98[1] = NSParagraphStyleAttributeName;
      v98[2] = NSForegroundColorAttributeName;
      v27 = +[UIColor blackColor];
      v99[2] = v27;
      v28 = v99;
      v29 = v98;
    }

    v30 = [NSDictionary dictionaryWithObjects:v28 forKeys:v29 count:3];
    v31 = v87;
    v32 = [v24 initWithString:v87 attributes:v30];

    v33 = v32;
    [v32 size];
    v35 = ceil(v34 + 4.0);
    v37 = v36 + 4.0;
    v38 = ceil(v36 + 4.0);
    v84 = v34;
    v85 = v36;
    if (v36 <= v34)
    {
      v39 = v35;
    }

    else
    {
      v39 = v38;
    }

    v94 = v39;
    [imageFlippedForRightToLeftLayoutDirection size];
    rect = v41;
    v42 = v40;
    v43 = 0.0;
    v44 = 0.0;
    v45 = v40;
    v46 = v37;
    if (!v95)
    {
      v44 = v35 * 0.5;
      v45 = v40 + v35 * 0.5 + 2.0 + 2.0;
      v43 = 1.0;
      v46 = 6.0;
    }

    v104.size.width = rect;
    v92 = v35;
    v47 = rect + v46;
    v104.origin.x = v43;
    v104.origin.y = v44;
    v104.size.height = v42;
    v48 = CGRectGetMaxX(v104) - v94 + 2.0;
    IsLeftToRight = CalInterfaceIsLeftToRight();
    v50 = v43 + 2.0;
    if (v95)
    {
      v50 = v37 + v43 + 2.0;
    }

    v51 = 0.0;
    if (count > 0x63)
    {
      v51 = 1.0;
    }

    if (IsLeftToRight)
    {
      v50 = v43;
    }

    v91 = v50;
    if (IsLeftToRight)
    {
      v52 = v48;
    }

    else
    {
      v52 = v51;
    }

    v93 = v47;
    v103.width = v47;
    v53 = v92;
    v86 = v45;
    v103.height = v45;
    UIGraphicsBeginImageContextWithOptions(v103, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v55 = v52;
    v56 = v92;
    if (!selectedCopy)
    {
      v57 = CalInterfaceIsLeftToRight();
      v58 = -1.0;
      if (!v57)
      {
        v58 = 1.0;
      }

      v55 = v52 + v58;
      v56 = v92 + 1.5;
    }

    v83 = v52;
    v59 = [UIBezierPath bezierPathWithRoundedRect:v55 cornerRadius:0.0, v94, v56];
    CGContextSaveGState(CurrentContext);
    v60 = v91;
    v61 = v91;
    v62 = v44;
    v63 = rect;
    v64 = v42;
    if (selectedCopy)
    {
      v61 = v91 + -1.0;
      v62 = v44 + -2.0;
      v63 = rect + 2.0;
      v64 = v42 + 4.0;
      if (v95)
      {
LABEL_45:
        if (selectedCopy)
        {
          goto LABEL_46;
        }

        goto LABEL_54;
      }
    }

    else if (v95)
    {
      goto LABEL_45;
    }

    CGContextBeginPath(CurrentContext);
    v107.origin.x = v61;
    v107.origin.y = v62;
    v107.size.width = v63;
    v107.size.height = v64;
    CGContextAddRect(CurrentContext, v107);
    CGContextAddPath(CurrentContext, [v59 CGPath]);
    CGContextEOClip(CurrentContext);
    if (selectedCopy)
    {
LABEL_46:
      v65 = v33;
      v66 = [selfCopy maskImageForImage:imageFlippedForRightToLeftLayoutDirection atPoint:v91 withSize:{v44, v93, v86}];
      v105.origin.x = 0.0;
      v105.origin.y = 0.0;
      v105.size.width = v93;
      v105.size.height = v86;
      CGContextClipToMask(CurrentContext, v105, v66);
      CGImageRelease(v66);
      v67 = [UIBezierPath bezierPathWithRoundedRect:v61 cornerRadius:v62, v63, v64, 4.0];
      if (CalSystemSolariumEnabled())
      {
        v68 = [UIBezierPath _bezierPathWithPillRect:v61 cornerRadius:v62, v63, v64, v64 * 0.5];

        v67 = v68;
      }

      v53 = v92;
      v69 = +[UIColor blackColor];
      [v69 set];

      [v67 fill];
      v33 = v65;
      v60 = v91;
      if (!v95)
      {
        goto LABEL_49;
      }

      goto LABEL_55;
    }

LABEL_54:
    [imageFlippedForRightToLeftLayoutDirection drawInRect:{v91, v44, rect, v42}];
    if (!v95)
    {
LABEL_49:
      recta = v59;
      CGContextRestoreGState(CurrentContext);
      v70 = 0.0;
      v71 = [UIBezierPath bezierPathWithRoundedRect:v83 cornerRadius:0.0, v94, v53, v92 * 0.5];
      v72 = v33;
      v73 = [selfCopy imageForString:v33 atRect:v83 withSize:{2.0, v94, v53 + -4.0, v93, v86}];
      if (count >= 0x64)
      {
        CalOnePixelInPoints();
        v70 = v74 + 0.0;
      }

      v106.origin.y = 0.0;
      v106.origin.x = v70;
      v106.size.width = v93;
      v106.size.height = v86;
      CGContextClipToMask(CurrentContext, v106, v73);
      v75 = +[UIColor redColor];
      [v75 set];

      [v71 fill];
      v76 = UIGraphicsGetImageFromCurrentImageContext();
      v16 = [v76 imageWithRenderingMode:2];

      UIGraphicsEndImageContext();
      CGImageRelease(v73);

      v31 = v87;
      v77 = v88;
      v33 = v72;
      v59 = recta;
LABEL_58:
      [qword_100251A08 setObject:v16 forKey:boldCopy];

      goto LABEL_59;
    }

LABEL_55:
    v78 = 0.0;
    v77 = v88;
    if (CalInterfaceIsLeftToRight())
    {
      v108.origin.x = v60;
      v108.origin.y = v44;
      v108.size.width = rect;
      v108.size.height = v42;
      v78 = CGRectGetMaxX(v108) + 4.0;
    }

    v109.origin.x = v60;
    v109.origin.y = v44;
    v109.size.width = rect;
    v109.size.height = v42;
    v79 = CGRectGetMidY(v109) + v84 * -0.5;
    v80 = +[UIColor blackColor];
    [v80 set];

    [v33 drawInRect:{v78, v79, v85, v84}];
    CGContextRestoreGState(CurrentContext);
    v81 = UIGraphicsGetImageFromCurrentImageContext();
    v16 = [v81 imageWithRenderingMode:2];

    UIGraphicsEndImageContext();
    goto LABEL_58;
  }

LABEL_59:

LABEL_60:

  return v16;
}

+ (id)badgedCalendarIcon:(BOOL)icon
{
  iconCopy = icon;
  v5 = &unk_100251A20;
  if (!icon)
  {
    v5 = &unk_100251A18;
  }

  v6 = *v5;
  if (!v6)
  {
    v7 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:17.0];
    v8 = [UIImage systemImageNamed:@"calendar.badge.exclamationmark" withConfiguration:v7];
    imageFlippedForRightToLeftLayoutDirection = [v8 imageFlippedForRightToLeftLayoutDirection];

    IsLeftToRight = CalInterfaceIsLeftToRight();
    v11 = 0.0;
    if (IsLeftToRight)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    if (IsLeftToRight)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = CalSystemSolariumEnabled();
    [imageFlippedForRightToLeftLayoutDirection size];
    if (v14)
    {
      v17 = 6.0;
    }

    else
    {
      v17 = v12;
    }

    if (v14)
    {
      v18 = 6.0;
    }

    else
    {
      v18 = v13;
    }

    if (v14)
    {
      v19 = 2.0;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = v15 + v18 + v17;
    v21 = 4.0;
    if (!v14)
    {
      v21 = 2.0;
    }

    v22 = v21 + v16;
    if (CalInterfaceIsLeftToRight())
    {
      v23 = v20;
    }

    else
    {
      v23 = v20 + 1.0;
    }

    v49.width = v23;
    v49.height = v22;
    UIGraphicsBeginImageContextWithOptions(v49, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    if (iconCopy)
    {
      v25 = CurrentContext;
      CGContextSaveGState(CurrentContext);
      v26 = [UIImage systemImageNamed:@"calendar" withConfiguration:v7];
      imageFlippedForRightToLeftLayoutDirection2 = [v26 imageFlippedForRightToLeftLayoutDirection];

      [imageFlippedForRightToLeftLayoutDirection2 size];
      v47 = v17 + v18 + v28;
      [imageFlippedForRightToLeftLayoutDirection2 size];
      v30 = v19 + v19 + v29;
      [imageFlippedForRightToLeftLayoutDirection size];
      v32 = v18 + v31 + -13.0 + -0.5;
      [imageFlippedForRightToLeftLayoutDirection size];
      v34 = v19 + v33 + -13.0 + -2.0;
      v35 = CalInterfaceIsLeftToRight();
      v36 = v18 + 0.5;
      if (v35)
      {
        v36 = v32;
      }

      else
      {
        v11 = 3.75;
      }

      v37 = [UIBezierPath bezierPathWithRoundedRect:v36 cornerRadius:v34, 13.0, 13.0, 7.0];
      CGContextBeginPath(v25);
      v50.origin.y = 0.0;
      v50.origin.x = v11;
      v50.size.width = v47;
      v50.size.height = v30;
      CGContextAddRect(v25, v50);
      CGContextAddPath(v25, [v37 CGPath]);
      CGContextEOClip(v25);
      v38 = CalInterfaceIsLeftToRight();
      v39 = 3.75;
      if (v38)
      {
        v39 = v18;
      }

      v40 = [self maskImageForImage:imageFlippedForRightToLeftLayoutDirection2 atPoint:v39 withSize:{v19, v23, v22}];
      v51.origin.x = 0.0;
      v51.origin.y = 0.0;
      v51.size.width = v23;
      v51.size.height = v22;
      CGContextClipToMask(v25, v51, v40);
      CGImageRelease(v40);
      v41 = [UIBezierPath bezierPathWithRoundedRect:v11 cornerRadius:0.0, v47, v30, 4.0];
      if (CalSystemSolariumEnabled())
      {
        v42 = [UIBezierPath _bezierPathWithPillRect:v11 cornerRadius:0.0, v47, v30, v30 * 0.5];

        v41 = v42;
      }

      v43 = +[UIColor blackColor];
      [v43 set];

      [v41 fill];
      CGContextRestoreGState(v25);
      CGContextBeginPath(v25);
      CGContextAddPath(v25, [v37 CGPath]);
      CGContextClip(v25);
      [imageFlippedForRightToLeftLayoutDirection drawAtPoint:{v18, v19}];

      v44 = &unk_100251A20;
    }

    else
    {
      [imageFlippedForRightToLeftLayoutDirection drawAtPoint:{v18, v19}];
      v44 = &unk_100251A18;
    }

    v45 = UIGraphicsGetImageFromCurrentImageContext();
    v6 = [v45 imageWithRenderingMode:2];

    UIGraphicsEndImageContext();
    objc_storeStrong(v44, v6);
  }

  return v6;
}

+ (double)spacerWidthForWindowWidth:(double)width
{
  +[MainWindowRootViewController minimumStandardWindowWidth];
  v5 = v4 <= width;
  result = 15.0;
  if (!v5)
  {
    return 5.0;
  }

  return result;
}

- (MainWindowControlHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v42.receiver = self;
  v42.super_class = MainWindowControlHeaderView;
  v7 = [(MainWindowControlHeaderView *)&v42 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIToolbar alloc] initWithFrame:{x, y, width, height}];
    toolbar = v7->_toolbar;
    v7->_toolbar = v8;

    [(UIToolbar *)v7->_toolbar setAutoresizingMask:18];
    v10 = objc_opt_new();
    [v10 configureWithTransparentBackground];
    [(UIToolbar *)v7->_toolbar setStandardAppearance:v10];
    v11 = CalendarAppBarButtonItemTintColor();
    [(UIToolbar *)v7->_toolbar setTintColor:v11];

    v12 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
    v13 = [UIBarButtonItem alloc];
    v14 = [UIImage systemImageNamed:@"calendar" withConfiguration:v12];
    imageFlippedForRightToLeftLayoutDirection = [v14 imageFlippedForRightToLeftLayoutDirection];
    v16 = [v13 initWithImage:imageFlippedForRightToLeftLayoutDirection style:0 target:v7 action:"calendarButtonTapped"];
    calendarBarButton = v7->_calendarBarButton;
    v7->_calendarBarButton = v16;

    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [(UIBarButtonItem *)v7->_calendarBarButton _setAdditionalSelectionInsets:5.0, 2.5, 5.5, 2.5];
    }

    [(UIBarButtonItem *)v7->_calendarBarButton setAccessibilityIdentifier:@"calendars-button"];
    v18 = CalendarAppBarButtonItemTintColor();
    [(UIBarButtonItem *)v7->_calendarBarButton setTintColor:v18];

    traitCollection = [(MainWindowControlHeaderView *)v7 traitCollection];
    v20 = [traitCollection legibilityWeight] == 1;

    v21 = [UIBarButtonItem alloc];
    v22 = [MainWindowControlHeaderView inboxImageForCount:0 selected:0 forToolbar:0 bold:v20];
    v23 = [v21 initWithImage:v22 style:0 target:v7 action:"inboxButtonTapped"];
    inboxBarButton = v7->_inboxBarButton;
    v7->_inboxBarButton = v23;

    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [(UIBarButtonItem *)v7->_inboxBarButton _setAdditionalSelectionInsets:4.0, 3.0, 5.0, 3.0];
    }

    [(UIBarButtonItem *)v7->_inboxBarButton setAccessibilityIdentifier:@"inbox-button"];
    v25 = CalendarAppBarButtonItemTintColor();
    [(UIBarButtonItem *)v7->_inboxBarButton setTintColor:v25];

    v26 = [UIBarButtonItem alloc];
    v27 = [UIImage systemImageNamed:@"list.bullet" withConfiguration:v12];
    imageFlippedForRightToLeftLayoutDirection2 = [v27 imageFlippedForRightToLeftLayoutDirection];
    v29 = [v26 initWithImage:imageFlippedForRightToLeftLayoutDirection2 style:0 target:v7 action:"listButtonTapped"];
    listViewBarButton = v7->_listViewBarButton;
    v7->_listViewBarButton = v29;

    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [(UIBarButtonItem *)v7->_listViewBarButton _setAdditionalSelectionInsets:3.0, 2.5, 3.0, 2.5];
    }

    [(UIBarButtonItem *)v7->_listViewBarButton setAccessibilityIdentifier:@"listview-button"];
    v31 = CalendarAppBarButtonItemTintColor();
    [(UIBarButtonItem *)v7->_listViewBarButton setTintColor:v31];

    v32 = [UIBarButtonItem alloc];
    v33 = [UIImage systemImageNamed:@"plus" withConfiguration:v12];
    v34 = [v32 initWithImage:v33 style:0 target:v7 action:"newEventButtonTapped"];
    newEventBarButton = v7->_newEventBarButton;
    v7->_newEventBarButton = v34;

    [(UIBarButtonItem *)v7->_newEventBarButton setAccessibilityIdentifier:@"add-plus-button"];
    v36 = +[MainWindowControlHeaderView spacer];
    v37 = +[MainWindowControlHeaderView spacer];
    v38 = +[MainWindowControlHeaderView spacer];
    v43[0] = v36;
    v43[1] = v37;
    v43[2] = v38;
    v39 = [NSArray arrayWithObjects:v43 count:3];
    spacers = v7->_spacers;
    v7->_spacers = v39;

    [(MainWindowControlHeaderView *)v7 updateToolbarItems];
    [(MainWindowControlHeaderView *)v7 addSubview:v7->_toolbar];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIToolbar *)self->_toolbar sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutForWidth:(double)width
{
  [MainWindowControlHeaderView spacerWidthForWindowWidth:width];
  v5 = v4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_spacers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setWidth:{v5, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)calendarBarButtonItem
{
  v3 = &OBJC_IVAR___MainWindowControlHeaderView__calendarBarButton;
  if ((CalSystemSolariumEnabled() & 1) == 0 && self->_hasError)
  {
    v3 = &OBJC_IVAR___MainWindowControlHeaderView__badgedCalendarBarButton;
  }

  v4 = *(&self->super.super.super.isa + *v3);

  return v4;
}

- (id)inboxBarButtonItem
{
  v3 = &OBJC_IVAR___MainWindowControlHeaderView__inboxBarButton;
  if ((CalSystemSolariumEnabled() & 1) == 0 && self->_inboxCount)
  {
    v3 = &OBJC_IVAR___MainWindowControlHeaderView__badgedInboxBarButton;
  }

  v4 = *(&self->super.super.super.isa + *v3);

  return v4;
}

- (void)updateButtonStateForSidebar:(unint64_t)sidebar
{
  calendarBarButtonItem = [(MainWindowControlHeaderView *)self calendarBarButtonItem];
  inboxBarButtonItem = [(MainWindowControlHeaderView *)self inboxBarButtonItem];
  v14[0] = calendarBarButtonItem;
  v14[1] = inboxBarButtonItem;
  v14[2] = self->_listViewBarButton;
  v7 = [NSArray arrayWithObjects:v14 count:3];
  if (CalSystemSolariumEnabled())
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009F288;
    v13[3] = &unk_1002102C8;
    v13[4] = sidebar;
    [v7 enumerateObjectsUsingBlock:v13];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009F304;
    v8[3] = &unk_1002102F0;
    sidebarCopy = sidebar;
    v9 = inboxBarButtonItem;
    selfCopy = self;
    v11 = calendarBarButtonItem;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

+ (id)inboxBadgeForCount:(unint64_t)count
{
  if (count)
  {
    if (count < 0x64)
    {
      v6 = [_UIBarButtonItemBadge _badgeWithCount:?];
    }

    else
    {
      v3 = +[NSBundle mainBundle];
      v4 = [v3 localizedStringForKey:@"%@+" value:&stru_1002133B8 table:0];
      v5 = [NSString localizedStringWithFormat:v4, &off_100219A60];

      v6 = [_UIBarButtonItemBadge _badgeWithString:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateInboxCount:(unint64_t)count
{
  if (self->_inboxCount == count)
  {
    return;
  }

  if (!CalSystemSolariumEnabled())
  {
    if (self->_inboxCount)
    {
      v5 = &OBJC_IVAR___MainWindowControlHeaderView__badgedInboxBarButton;
    }

    else
    {
      v5 = &OBJC_IVAR___MainWindowControlHeaderView__inboxBarButton;
    }

    v21 = *(&self->super.super.super.isa + *v5);
    if (count)
    {
      v6 = &OBJC_IVAR___MainWindowControlHeaderView__badgedInboxBarButton;
    }

    else
    {
      v6 = &OBJC_IVAR___MainWindowControlHeaderView__inboxBarButton;
    }

    v7 = *(&self->super.super.super.isa + *v6);
    self->_inboxCount = count;
    v8 = self->_inboxBarButton;
    p_info = (_CalendarEventsRow + 32);
    if (self->_inboxCount)
    {
      badgedInboxBarButton = self->_badgedInboxBarButton;
      if (!badgedInboxBarButton)
      {
        v11 = [UIBarButtonItem alloc];
        image = [(UIBarButtonItem *)self->_inboxBarButton image];
        v13 = [MainWindowControlHeaderView customBadgedButtonWithImage:image target:self selected:self->_inboxSelected insets:"inboxButtonTapped" action:-4.0, -10.0, -2.0, -10.0];
        v14 = [v11 initWithCustomView:v13];
        v15 = self->_badgedInboxBarButton;
        self->_badgedInboxBarButton = v14;

        p_info = _CalendarEventsRow.info;
        [(UIBarButtonItem *)self->_badgedInboxBarButton setAccessibilityIdentifier:@"inbox-button"];
        v16 = CalendarAppBarButtonItemTintColor();
        [(UIBarButtonItem *)self->_badgedInboxBarButton setTintColor:v16];

        badgedInboxBarButton = self->_badgedInboxBarButton;
      }

      v17 = badgedInboxBarButton;

      v8 = v17;
    }

    v18 = [p_info + 321 inboxImageForCount:count selected:self->_inboxSelected forToolbar:0 bold:0];
    if (v8 == self->_inboxBarButton)
    {
      [(UIBarButtonItem *)v8 setImage:v18];
    }

    else
    {
      customView = [(UIBarButtonItem *)v8 customView];
      [customView setImage:v18 forState:0];
    }

    [(MainWindowControlHeaderView *)self updateToolbarItems];
    if (v21 != v7 && v7 == self->_inboxBarButton)
    {
      [(UIBarButtonItem *)v7 setSelected:self->_inboxSelected];
    }

    goto LABEL_25;
  }

  self->_inboxCount = count;
  if (count)
  {
    v21 = [MainWindowControlHeaderView inboxBadgeForCount:count];
    [(UIBarButtonItem *)self->_inboxBarButton set_badge:v21];
LABEL_25:

    return;
  }

  inboxBarButton = self->_inboxBarButton;

  [(UIBarButtonItem *)inboxBarButton set_badge:0];
}

- (void)updateErrorState:(BOOL)state
{
  if (self->_hasError != state)
  {
    stateCopy = state;
    if (CalSystemSolariumEnabled())
    {
      v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
      v18 = v5;
      if (stateCopy)
      {
        v6 = @"calendar.badge.exclamationmark";
      }

      else
      {
        v6 = @"calendar";
      }

      v7 = [UIImage systemImageNamed:v6 withConfiguration:v5];
      imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];

      [(UIBarButtonItem *)self->_calendarBarButton setImage:imageFlippedForRightToLeftLayoutDirection];
      v9 = v18;
      self->_hasError = stateCopy;
    }

    else
    {
      if (self->_hasError)
      {
        v10 = &OBJC_IVAR___MainWindowControlHeaderView__badgedCalendarBarButton;
      }

      else
      {
        v10 = &OBJC_IVAR___MainWindowControlHeaderView__calendarBarButton;
      }

      v19 = *(&self->super.super.super.isa + *v10);
      if (stateCopy)
      {
        v11 = &OBJC_IVAR___MainWindowControlHeaderView__badgedCalendarBarButton;
      }

      else
      {
        v11 = &OBJC_IVAR___MainWindowControlHeaderView__calendarBarButton;
      }

      v12 = *(&self->super.super.super.isa + *v11);
      self->_hasError = stateCopy;
      if (stateCopy && !self->_badgedCalendarBarButton)
      {
        v13 = [MainWindowControlHeaderView badgedCalendarIcon:self->_calendarSelected];
        v14 = [UIBarButtonItem alloc];
        v15 = [MainWindowControlHeaderView customBadgedButtonWithImage:v13 target:self selected:self->_calendarSelected insets:"calendarButtonTapped" action:-8.0, -10.0, -8.0, -10.0];
        v16 = [v14 initWithCustomView:v15];
        badgedCalendarBarButton = self->_badgedCalendarBarButton;
        self->_badgedCalendarBarButton = v16;

        [(UIBarButtonItem *)self->_badgedCalendarBarButton setAccessibilityIdentifier:@"calendars-button"];
      }

      [(MainWindowControlHeaderView *)self updateToolbarItems];
      if (v19 != v12 && v12 == self->_calendarBarButton)
      {
        [(UIBarButtonItem *)v12 setSelected:self->_calendarSelected];
      }

      v9 = v19;
    }
  }
}

+ (id)customBadgedButtonWithImage:(id)image target:(id)target selected:(BOOL)selected insets:(UIEdgeInsets)insets action:(SEL)action
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  targetCopy = target;
  v16 = [UIButton buttonWithType:1];
  if (CalSolariumEnabled())
  {
    v17 = +[UIButtonConfiguration plainButtonConfiguration];
    [v17 setImage:imageCopy];
    [v16 setConfiguration:v17];
  }

  else
  {
    [v16 setImage:imageCopy forState:0];
  }

  if (CalSystemSolariumEnabled())
  {
    v18 = CalendarAppBarButtonItemTintColor();
    [v16 setTintColor:v18];
  }

  [v16 addTarget:targetCopy action:action forControlEvents:64];
  objc_initWeak(&location, v16);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009FD90;
  v20[3] = &unk_100210318;
  objc_copyWeak(v21, &location);
  selectedCopy = selected;
  v21[1] = *&top;
  v21[2] = *&left;
  v21[3] = *&bottom;
  v21[4] = *&right;
  [v16 setPointerStyleProvider:v20];
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);

  return v16;
}

@end