@interface ShareItemSourceUtilities
+ (id)createHTMLTemplateForCuratedGuide:(id)a3 url:(id)a4 title:(id)a5;
+ (id)createHTMLTemplateForPublisher:(id)a3 url:(id)a4 title:(id)a5;
+ (id)createMailSubjectForCuratedGuideWithTitle:(id)a3;
+ (void)createHTMLTemplateForPersonalCollectionHandler:(id)a3 mapItems:(id)a4 sharingURL:(id)a5 completion:(id)a6;
@end

@implementation ShareItemSourceUtilities

+ (id)createMailSubjectForCuratedGuideWithTitle:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Maps Guides: %@ [Sharing]" value:@"localized string not found" table:0];
  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

+ (id)createHTMLTemplateForPublisher:(id)a3 url:(id)a4 title:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Maps Guides: %@ [Sharing]" value:@"localized string not found" table:0];
  v12 = [NSString stringWithFormat:v11, v7];

  v13 = [v12 _navigation_sanitizedStringForDisplayInHTML];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Curated Collections] %lu Guides" value:@"localized string not found" table:0];
  v16 = [v9 totalCollectionCount];

  v17 = [NSString localizedStringWithFormat:v15, v16];
  v18 = [v17 _navigation_sanitizedStringForDisplayInHTML];

  v19 = [NSString stringWithFormat:@"<b>%@</b><br>%@", v13, v18];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Open in Apple Maps [Curated Guide Sharing]" value:@"localized string not found" table:0];
  v22 = HTMLStringForURLWithLabel();

  v23 = HTMLBodyWrapperStringWithFormat();

  return v23;
}

+ (id)createHTMLTemplateForCuratedGuide:(id)a3 url:(id)a4 title:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 photos];
  v11 = [v10 firstObject];
  v31 = HTMLStringForPhoto();

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Maps Guide: Guide Name [Curated Guide Sharing]" value:@"localized string not found" table:0];
  v14 = [NSString stringWithFormat:v13, v7];

  v15 = [v14 _navigation_sanitizedStringForDisplayInHTML];

  v16 = [v9 publisher];
  v17 = [v16 publisherAttribution];
  v18 = [v17 displayName];
  v19 = [v18 _navigation_sanitizedStringForDisplayInHTML];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"count_of_places" value:@"localized string not found" table:0];
  v22 = [v9 numberOfItems];

  v23 = [NSString localizedStringWithFormat:v21, v22];
  v24 = [v23 _navigation_sanitizedStringForDisplayInHTML];

  v25 = [NSString stringWithFormat:@"<b>%@</b><br>%@<br>%@", v15, v19, v24];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"Open in Apple Maps [Curated Guide Sharing]" value:@"localized string not found" table:0];
  v28 = HTMLStringForURLWithLabel();

  v29 = HTMLBodyWrapperStringWithFormat();

  return v29;
}

+ (void)createHTMLTemplateForPersonalCollectionHandler:(id)a3 mapItems:(id)a4 sharingURL:(id)a5 completion:(id)a6
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v9 = v16;
  v10 = v15;
  v11 = v14;
  v12 = v13;
  MUHTMLStringForAnnotatedSnapshotImageWithMapItems();
}

@end