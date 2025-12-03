@interface RouteAdvisoryViewModel
+ (id)advisoryTextForAutomaticSharingContacts:(id)contacts buttonRange:(_NSRange *)range;
+ (id)viewModelForAdvisory:(id)advisory;
+ (id)viewModelWithText:(id)text artwork:(id)artwork handler:(id)handler;
+ (id)viewModelWithText:(id)text buttonRange:(_NSRange)range image:(id)image handler:(id)handler;
+ (id)viewModelsForAdvisories:(id)advisories;
- (BOOL)isClickable;
- (BOOL)showMoreButton;
- (RouteAdvisoryViewModel)initWithAdvisory:(id)advisory;
- (RouteAdvisoryViewModel)initWithText:(id)text artwork:(id)artwork handler:(id)handler;
- (RouteAdvisoryViewModel)initWithText:(id)text buttonRange:(_NSRange)range image:(id)image handler:(id)handler;
- (_NSRange)buttonRange;
- (void)fetchImageForArtworkIfNeededWithTraitCollection:(id)collection;
@end

@implementation RouteAdvisoryViewModel

+ (id)advisoryTextForAutomaticSharingContacts:(id)contacts buttonRange:(_NSRange *)range
{
  contactsCopy = contacts;
  v6 = [contactsCopy count];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Share ETA] Automatic Sharing Plural Indication value:Tappable Portion" table:{@"localized string not found", 0}];
  v9 = [NSString localizedStringWithFormat:v8, v6];

  if (v6 == 1)
  {
    firstObject = [contactsCopy firstObject];
    contact = [firstObject contact];

    string5 = [CNContactFormatter stringFromContact:contact style:1000];
    if (string5)
    {
      v13 = +[NSBundle mainBundle];
      string3 = [v13 localizedStringForKey:@"[Share ETA] Automatic Sharing Singular Indication" value:@"localized string not found" table:0];

      v15 = [NSAttributedString alloc];
      v16 = [NSString stringWithFormat:string3, string5];
      v17 = [v15 initWithString:v16];

      string = [v17 string];
      v19 = [string rangeOfString:string5];
      v21 = v20;
    }

    else
    {
      v26 = [NSAttributedString alloc];
      v27 = +[NSBundle mainBundle];
      v28 = [v27 localizedStringForKey:@"[Share ETA] Automatic Sharing Unknown Indication" value:@"localized string not found" table:0];
      v17 = [v26 initWithString:v28];

      string2 = [v17 string];
      v19 = [string2 rangeOfString:v9];
      v21 = v30;

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        string5 = 0;
        goto LABEL_9;
      }

      string3 = [v17 string];
      v21 = [string3 length];
      v19 = 0;
    }
  }

  else
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[Share ETA] Automatic Sharing Plural Indication" value:@"localized string not found" table:0];
    contact = [NSString localizedStringWithFormat:v23, v6];

    v17 = [[NSAttributedString alloc] initWithString:contact];
    string4 = [v17 string];
    v19 = [string4 rangeOfString:v9];
    v21 = v25;

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    string5 = [v17 string];
    v21 = [string5 length];
    v19 = 0;
  }

LABEL_9:

LABEL_10:
  if (range)
  {
    range->location = v19;
    range->length = v21;
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
  advisory = [(RouteAdvisoryViewModel *)self advisory];
  if (advisory)
  {
    advisory2 = [(RouteAdvisoryViewModel *)self advisory];
    isClickable = [advisory2 isClickable];
  }

  else
  {
    isClickable = 0;
  }

  return isClickable;
}

- (BOOL)isClickable
{
  advisory = [(RouteAdvisoryViewModel *)self advisory];
  if (advisory)
  {
    advisory2 = [(RouteAdvisoryViewModel *)self advisory];
    isClickable = [advisory2 isClickable];
  }

  else
  {
    isClickable = 1;
  }

  return isClickable;
}

- (void)fetchImageForArtworkIfNeededWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  artwork = [(RouteAdvisoryViewModel *)self artwork];

  if (artwork)
  {
    image = [(RouteAdvisoryViewModel *)self image];

    if (!image)
    {
      artwork2 = [(RouteAdvisoryViewModel *)self artwork];
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

- (RouteAdvisoryViewModel)initWithText:(id)text buttonRange:(_NSRange)range image:(id)image handler:(id)handler
{
  length = range.length;
  location = range.location;
  textCopy = text;
  imageCopy = image;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = RouteAdvisoryViewModel;
  v14 = [(RouteAdvisoryViewModel *)&v20 init];
  if (v14)
  {
    v15 = [textCopy copy];
    text = v14->_text;
    v14->_text = v15;

    objc_storeStrong(&v14->_image, image);
    v14->_buttonRange.location = location;
    v14->_buttonRange.length = length;
    v17 = [handlerCopy copy];
    handler = v14->_handler;
    v14->_handler = v17;
  }

  return v14;
}

- (RouteAdvisoryViewModel)initWithText:(id)text artwork:(id)artwork handler:(id)handler
{
  textCopy = text;
  artworkCopy = artwork;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = RouteAdvisoryViewModel;
  v11 = [(RouteAdvisoryViewModel *)&v17 init];
  if (v11)
  {
    v12 = [textCopy copy];
    text = v11->_text;
    v11->_text = v12;

    objc_storeStrong(&v11->_artwork, artwork);
    v14 = [handlerCopy copy];
    handler = v11->_handler;
    v11->_handler = v14;
  }

  return v11;
}

- (RouteAdvisoryViewModel)initWithAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  titleString = [advisoryCopy titleString];
  defaultOptions = [titleString defaultOptions];

  [defaultOptions setCreateAttributedString:1];
  v8 = +[RouteAdvisoryView _stringAttributes];
  [defaultOptions setStringAttributes:v8];

  titleString2 = [advisoryCopy titleString];
  v10 = [titleString2 stringResultWithOptions:defaultOptions];
  attributedString = [v10 attributedString];

  artwork = [advisoryCopy artwork];
  v13 = [(RouteAdvisoryViewModel *)self initWithText:attributedString artwork:artwork handler:0];

  if (v13)
  {
    objc_storeStrong(&v13->_advisory, advisory);
  }

  return v13;
}

+ (id)viewModelWithText:(id)text buttonRange:(_NSRange)range image:(id)image handler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  imageCopy = image;
  textCopy = text;
  v14 = [[self alloc] initWithText:textCopy buttonRange:location image:length handler:{imageCopy, handlerCopy}];

  return v14;
}

+ (id)viewModelWithText:(id)text artwork:(id)artwork handler:(id)handler
{
  handlerCopy = handler;
  artworkCopy = artwork;
  textCopy = text;
  v11 = [[self alloc] initWithText:textCopy artwork:artworkCopy handler:handlerCopy];

  return v11;
}

+ (id)viewModelsForAdvisories:(id)advisories
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E19F78;
  v5[3] = &unk_1016559F0;
  v5[4] = self;
  v3 = sub_100021DB0(advisories, v5);

  return v3;
}

+ (id)viewModelForAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  v5 = [[self alloc] initWithAdvisory:advisoryCopy];

  return v5;
}

@end