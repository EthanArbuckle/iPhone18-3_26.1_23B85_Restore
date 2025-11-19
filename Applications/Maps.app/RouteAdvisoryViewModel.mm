@interface RouteAdvisoryViewModel
+ (id)advisoryTextForAutomaticSharingContacts:(id)a3 buttonRange:(_NSRange *)a4;
+ (id)viewModelForAdvisory:(id)a3;
+ (id)viewModelWithText:(id)a3 artwork:(id)a4 handler:(id)a5;
+ (id)viewModelWithText:(id)a3 buttonRange:(_NSRange)a4 image:(id)a5 handler:(id)a6;
+ (id)viewModelsForAdvisories:(id)a3;
- (BOOL)isClickable;
- (BOOL)showMoreButton;
- (RouteAdvisoryViewModel)initWithAdvisory:(id)a3;
- (RouteAdvisoryViewModel)initWithText:(id)a3 artwork:(id)a4 handler:(id)a5;
- (RouteAdvisoryViewModel)initWithText:(id)a3 buttonRange:(_NSRange)a4 image:(id)a5 handler:(id)a6;
- (_NSRange)buttonRange;
- (void)fetchImageForArtworkIfNeededWithTraitCollection:(id)a3;
@end

@implementation RouteAdvisoryViewModel

+ (id)advisoryTextForAutomaticSharingContacts:(id)a3 buttonRange:(_NSRange *)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Share ETA] Automatic Sharing Plural Indication value:Tappable Portion" table:{@"localized string not found", 0}];
  v9 = [NSString localizedStringWithFormat:v8, v6];

  if (v6 == 1)
  {
    v10 = [v5 firstObject];
    v11 = [v10 contact];

    v12 = [CNContactFormatter stringFromContact:v11 style:1000];
    if (v12)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"[Share ETA] Automatic Sharing Singular Indication" value:@"localized string not found" table:0];

      v15 = [NSAttributedString alloc];
      v16 = [NSString stringWithFormat:v14, v12];
      v17 = [v15 initWithString:v16];

      v18 = [v17 string];
      v19 = [v18 rangeOfString:v12];
      v21 = v20;
    }

    else
    {
      v26 = [NSAttributedString alloc];
      v27 = +[NSBundle mainBundle];
      v28 = [v27 localizedStringForKey:@"[Share ETA] Automatic Sharing Unknown Indication" value:@"localized string not found" table:0];
      v17 = [v26 initWithString:v28];

      v29 = [v17 string];
      v19 = [v29 rangeOfString:v9];
      v21 = v30;

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v14 = [v17 string];
      v21 = [v14 length];
      v19 = 0;
    }
  }

  else
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[Share ETA] Automatic Sharing Plural Indication" value:@"localized string not found" table:0];
    v11 = [NSString localizedStringWithFormat:v23, v6];

    v17 = [[NSAttributedString alloc] initWithString:v11];
    v24 = [v17 string];
    v19 = [v24 rangeOfString:v9];
    v21 = v25;

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v12 = [v17 string];
    v21 = [v12 length];
    v19 = 0;
  }

LABEL_9:

LABEL_10:
  if (a4)
  {
    a4->location = v19;
    a4->length = v21;
  }

  return v17;
}

- (_NSRange)buttonRange
{
  length = self->_buttonRange.length;
  location = self->_buttonRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)showMoreButton
{
  v3 = [(RouteAdvisoryViewModel *)self advisory];
  if (v3)
  {
    v4 = [(RouteAdvisoryViewModel *)self advisory];
    v5 = [v4 isClickable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isClickable
{
  v3 = [(RouteAdvisoryViewModel *)self advisory];
  if (v3)
  {
    v4 = [(RouteAdvisoryViewModel *)self advisory];
    v5 = [v4 isClickable];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)fetchImageForArtworkIfNeededWithTraitCollection:(id)a3
{
  v12 = a3;
  v4 = [(RouteAdvisoryViewModel *)self artwork];

  if (v4)
  {
    v5 = [(RouteAdvisoryViewModel *)self image];

    if (!v5)
    {
      v6 = [(RouteAdvisoryViewModel *)self artwork];
      v7 = ImageForArtworkDataSource();

      if (v7)
      {
        artwork = self->_artwork;
        self->_artwork = 0;

        v9 = v7;
        image = self->_image;
        self->_image = v9;
      }

      else
      {
        image = [UIImage warningImageOfSize:17.0];
        if (image)
        {
          v11 = self->_artwork;
          self->_artwork = 0;

          objc_storeStrong(&self->_image, image);
        }
      }
    }
  }
}

- (RouteAdvisoryViewModel)initWithText:(id)a3 buttonRange:(_NSRange)a4 image:(id)a5 handler:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = RouteAdvisoryViewModel;
  v14 = [(RouteAdvisoryViewModel *)&v20 init];
  if (v14)
  {
    v15 = [v11 copy];
    text = v14->_text;
    v14->_text = v15;

    objc_storeStrong(&v14->_image, a5);
    v14->_buttonRange.location = location;
    v14->_buttonRange.length = length;
    v17 = [v13 copy];
    handler = v14->_handler;
    v14->_handler = v17;
  }

  return v14;
}

- (RouteAdvisoryViewModel)initWithText:(id)a3 artwork:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = RouteAdvisoryViewModel;
  v11 = [(RouteAdvisoryViewModel *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    text = v11->_text;
    v11->_text = v12;

    objc_storeStrong(&v11->_artwork, a4);
    v14 = [v10 copy];
    handler = v11->_handler;
    v11->_handler = v14;
  }

  return v11;
}

- (RouteAdvisoryViewModel)initWithAdvisory:(id)a3
{
  v5 = a3;
  v6 = [v5 titleString];
  v7 = [v6 defaultOptions];

  [v7 setCreateAttributedString:1];
  v8 = +[RouteAdvisoryView _stringAttributes];
  [v7 setStringAttributes:v8];

  v9 = [v5 titleString];
  v10 = [v9 stringResultWithOptions:v7];
  v11 = [v10 attributedString];

  v12 = [v5 artwork];
  v13 = [(RouteAdvisoryViewModel *)self initWithText:v11 artwork:v12 handler:0];

  if (v13)
  {
    objc_storeStrong(&v13->_advisory, a3);
  }

  return v13;
}

+ (id)viewModelWithText:(id)a3 buttonRange:(_NSRange)a4 image:(id)a5 handler:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [[a1 alloc] initWithText:v13 buttonRange:location image:length handler:{v12, v11}];

  return v14;
}

+ (id)viewModelWithText:(id)a3 artwork:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithText:v10 artwork:v9 handler:v8];

  return v11;
}

+ (id)viewModelsForAdvisories:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E19F78;
  v5[3] = &unk_1016559F0;
  v5[4] = a1;
  v3 = sub_100021DB0(a3, v5);

  return v3;
}

+ (id)viewModelForAdvisory:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAdvisory:v4];

  return v5;
}

@end