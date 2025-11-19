@interface _BSUIGoalsSharableTextProvider
- (_BSUIGoalsSharableTextProvider)initWithSharableImage:(id)a3 kind:(unint64_t)a4 year:(unint64_t)a5 title:(id)a6 sharingUrls:(id)a7;
- (id)_baseMessageForGoalKind;
- (id)_buildMailHTML;
- (id)_escapeHTMLCharactersInString:(id)a3;
- (id)_generateLinkMetaData;
- (id)_generateLocalizedYear;
- (id)_generateMessageWithURLForActivityType:(id)a3;
- (id)_generateTwitterMessage;
- (id)_mailMessageForGoalKind;
- (id)_mailSubjectForGoalKind;
- (id)_messageForGoalKind;
- (id)_readingGoalsURLForActivityType:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
@end

@implementation _BSUIGoalsSharableTextProvider

- (_BSUIGoalsSharableTextProvider)initWithSharableImage:(id)a3 kind:(unint64_t)a4 year:(unint64_t)a5 title:(id)a6 sharingUrls:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = _BSUIGoalsSharableTextProvider;
  v16 = [(_BSUIGoalsSharableTextProvider *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_kind = a4;
    objc_storeStrong(&v16->_sharedImage, a3);
    v17->_year = a5;
    objc_storeStrong(&v17->_title, a6);
    objc_storeStrong(&v17->_sharingUrls, a7);
  }

  return v17;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:UIActivityTypePostToFacebook])
  {
    v6 = [(_BSUIGoalsSharableTextProvider *)self _generateFacebookMessage];
  }

  else if ([v5 isEqualToString:UIActivityTypePostToTwitter])
  {
    v6 = [(_BSUIGoalsSharableTextProvider *)self _generateTwitterMessage];
  }

  else if ([v5 isEqualToString:UIActivityTypeMail])
  {
    v6 = [(_BSUIGoalsSharableTextProvider *)self _buildMailHTML];
  }

  else
  {
    if ([v5 isEqualToString:@"com.burbn.instagram.shareextension"])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v6 = [(_BSUIGoalsSharableTextProvider *)self _generateMessageWithURLForActivityType:v5];
  }

  v7 = v6;
LABEL_11:

  return v7;
}

- (id)_generateLinkMetaData
{
  if (self->_sharedImage)
  {
    v3 = objc_alloc_init(LPLinkMetadata);
    [v3 setTitle:self->_title];
    v4 = [(_BSUIGoalsSharableTextProvider *)self _generateMessageWithURLForActivityType:UIActivityTypeMessage];
    [v3 setSummary:v4];

    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v7 = v6;

    v15.width = v7 * 64.0;
    v15.height = v7 * 64.0;
    UIGraphicsBeginImageContext(v15);
    sharedImage = self->_sharedImage;
    CGRectMakeWithOriginSize();
    [(UIImage *)sharedImage drawInRect:?];
    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v10 = [LPImage alloc];
    v11 = UIImagePNGRepresentation(v9);
    v12 = [v10 initWithData:v11 MIMEType:@"image/png"];

    [v3 setImage:v12];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = [(_BSUIGoalsSharableTextProvider *)self _mailSubjectForGoalKind:a3];
  if (self->_kind == 8)
  {
    v6 = [(_BSUIGoalsSharableTextProvider *)self _generateLocalizedYear];
    v7 = [NSString localizedStringWithFormat:v5, v6];

    v5 = v7;
  }

  return v5;
}

- (id)_readingGoalsURLForActivityType:(id)a3
{
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_8E70;
  v23 = sub_8E80;
  v24 = 0;
  if (self->_sharingUrls)
  {
    objc_opt_class();
    v6 = [(NSDictionary *)self->_sharingUrls objectForKeyedSubscript:v5];
    v7 = BUDynamicCast();
    v8 = v7;
    if (!v7)
    {
      objc_opt_class();
      v3 = [(NSDictionary *)self->_sharingUrls objectForKeyedSubscript:@"default"];
      v8 = BUDynamicCast();
    }

    objc_storeStrong(v20 + 5, v8);
    if (!v7)
    {
    }
  }

  else
  {
    v9 = dispatch_semaphore_create(0);
    v10 = +[BUBag defaultBag];
    v11 = [v10 readingGoalShareURL];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_8E88;
    v16[3] = &unk_386DE8;
    v18 = &v19;
    v6 = v9;
    v17 = v6;
    [v11 valueWithCompletion:v16];

    v12 = dispatch_time(0, 300000000);
    if (!dispatch_semaphore_wait(v6, v12))
    {
      v13 = BSUIGoalsSharableImageRendererLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_2BCDA0(v13);
      }
    }

    v7 = v17;
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)_buildMailHTML
{
  v3 = BSUIBundle();
  v4 = [v3 localizedStringForKey:@"Set your own reading goals on %@Apple Books%@." value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v5 = [(_BSUIGoalsSharableTextProvider *)self _mailMessageForGoalKind];
  v6 = [(_BSUIGoalsSharableTextProvider *)self _readingGoalsURLForActivityType:UIActivityTypeMail];
  v7 = [(_BSUIGoalsSharableTextProvider *)self _escapeHTMLCharactersInString:v4];

  v8 = [(_BSUIGoalsSharableTextProvider *)self _escapeHTMLCharactersInString:v5];

  if (self->_kind == 8)
  {
    v9 = [(_BSUIGoalsSharableTextProvider *)self _generateLocalizedYear];
    v10 = [NSString localizedStringWithFormat:v8, v9];

    v8 = v10;
  }

  v11 = UIImagePNGRepresentation(self->_sharedImage);
  v12 = [v11 base64EncodedStringWithOptions:0];
  v13 = [NSString stringWithFormat:@"data:image/pngbase64, %@", v12];;
  v14 = [NSString stringWithFormat:@"<img width='100%%' src='%@'/>", v13];
  v15 = [NSString stringWithFormat:@"<a href='%@'>", v6];
  [NSString localizedStringWithFormat:v7, v15, @"</a>"];
  v16 = v20 = v7;
  v17 = [NSString stringWithFormat:@"<p>%@<br/>%@<br/>%@</p>", v8, v14, v16];
  v18 = [NSString stringWithFormat:@"<html><body>%@</body></html>", v17];

  return v18;
}

- (id)_escapeHTMLCharactersInString:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"<" withString:@"&lt"];;

  v5 = [v4 stringByReplacingOccurrencesOfString:@">" withString:@"&gt"];;

  v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:@"&quot""];;

  v7 = [v6 stringByReplacingOccurrencesOfString:@"'" withString:@"&#39"];;

  return v7;
}

- (id)_baseMessageForGoalKind
{
  v2 = self->_kind - 1;
  if (v2 > 7)
  {
    v5 = &stru_3960F8;
  }

  else
  {
    v3 = off_386E30[v2];
    v4 = BSUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  }

  return v5;
}

- (id)_messageForGoalKind
{
  v2 = self->_kind - 1;
  if (v2 > 7)
  {
    v5 = &stru_3960F8;
  }

  else
  {
    v3 = off_386E70[v2];
    v4 = BSUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  }

  return v5;
}

- (id)_mailMessageForGoalKind
{
  v2 = self->_kind - 1;
  if (v2 > 7)
  {
    v5 = &stru_3960F8;
  }

  else
  {
    v3 = off_386EB0[v2];
    v4 = BSUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  }

  return v5;
}

- (id)_mailSubjectForGoalKind
{
  v2 = self->_kind - 1;
  if (v2 > 7)
  {
    v5 = &stru_3960F8;
  }

  else
  {
    v3 = off_386EF0[v2];
    v4 = BSUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  }

  return v5;
}

- (id)_generateTwitterMessage
{
  v2 = [(_BSUIGoalsSharableTextProvider *)self _baseMessageForGoalKind];
  v3 = BSUIBundle();
  v4 = [v3 localizedStringForKey:@"Set your own #ReadingGoals on @AppleBooks. apple.co/ReadingGoals" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v5 = [v2 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (id)_generateMessageWithURLForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(_BSUIGoalsSharableTextProvider *)self _messageForGoalKind];
  v6 = [(_BSUIGoalsSharableTextProvider *)self _readingGoalsURLForActivityType:v4];

  if (self->_kind == 8)
  {
    v7 = [(_BSUIGoalsSharableTextProvider *)self _generateLocalizedYear];
    v8 = [NSString localizedStringWithFormat:v5, v7];

    v5 = v8;
  }

  v9 = [NSString stringWithFormat:@"%@%@", v5, v6];

  return v9;
}

- (id)_generateLocalizedYear
{
  v3 = objc_alloc_init(NSDateComponents);
  [v3 setDay:31];
  [v3 setMonth:12];
  [v3 setYear:self->_year];
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v5 = [v4 dateFromComponents:v3];
  v6 = objc_alloc_init(NSDateFormatter);
  [v6 setDateStyle:2];
  [v6 setLocalizedDateFormatFromTemplate:@"y"];
  v7 = [v6 stringFromDate:v5];

  return v7;
}

@end