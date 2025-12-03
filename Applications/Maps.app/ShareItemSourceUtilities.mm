@interface ShareItemSourceUtilities
+ (id)createHTMLTemplateForCuratedGuide:(id)guide url:(id)url title:(id)title;
+ (id)createHTMLTemplateForPublisher:(id)publisher url:(id)url title:(id)title;
+ (id)createMailSubjectForCuratedGuideWithTitle:(id)title;
+ (void)createHTMLTemplateForPersonalCollectionHandler:(id)handler mapItems:(id)items sharingURL:(id)l completion:(id)completion;
@end

@implementation ShareItemSourceUtilities

+ (id)createMailSubjectForCuratedGuideWithTitle:(id)title
{
  titleCopy = title;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Maps Guides: %@ [Sharing]" value:@"localized string not found" table:0];
  titleCopy = [NSString stringWithFormat:v5, titleCopy];

  return titleCopy;
}

+ (id)createHTMLTemplateForPublisher:(id)publisher url:(id)url title:(id)title
{
  titleCopy = title;
  urlCopy = url;
  publisherCopy = publisher;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Maps Guides: %@ [Sharing]" value:@"localized string not found" table:0];
  titleCopy = [NSString stringWithFormat:v11, titleCopy];

  _navigation_sanitizedStringForDisplayInHTML = [titleCopy _navigation_sanitizedStringForDisplayInHTML];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Curated Collections] %lu Guides" value:@"localized string not found" table:0];
  totalCollectionCount = [publisherCopy totalCollectionCount];

  v17 = [NSString localizedStringWithFormat:v15, totalCollectionCount];
  _navigation_sanitizedStringForDisplayInHTML2 = [v17 _navigation_sanitizedStringForDisplayInHTML];

  v19 = [NSString stringWithFormat:@"<b>%@</b><br>%@", _navigation_sanitizedStringForDisplayInHTML, _navigation_sanitizedStringForDisplayInHTML2];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Open in Apple Maps [Curated Guide Sharing]" value:@"localized string not found" table:0];
  v22 = HTMLStringForURLWithLabel();

  v23 = HTMLBodyWrapperStringWithFormat();

  return v23;
}

+ (id)createHTMLTemplateForCuratedGuide:(id)guide url:(id)url title:(id)title
{
  titleCopy = title;
  urlCopy = url;
  guideCopy = guide;
  photos = [guideCopy photos];
  firstObject = [photos firstObject];
  v31 = HTMLStringForPhoto();

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Maps Guide: Guide Name [Curated Guide Sharing]" value:@"localized string not found" table:0];
  titleCopy = [NSString stringWithFormat:v13, titleCopy];

  _navigation_sanitizedStringForDisplayInHTML = [titleCopy _navigation_sanitizedStringForDisplayInHTML];

  publisher = [guideCopy publisher];
  publisherAttribution = [publisher publisherAttribution];
  displayName = [publisherAttribution displayName];
  _navigation_sanitizedStringForDisplayInHTML2 = [displayName _navigation_sanitizedStringForDisplayInHTML];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"count_of_places" value:@"localized string not found" table:0];
  numberOfItems = [guideCopy numberOfItems];

  v23 = [NSString localizedStringWithFormat:v21, numberOfItems];
  _navigation_sanitizedStringForDisplayInHTML3 = [v23 _navigation_sanitizedStringForDisplayInHTML];

  v25 = [NSString stringWithFormat:@"<b>%@</b><br>%@<br>%@", _navigation_sanitizedStringForDisplayInHTML, _navigation_sanitizedStringForDisplayInHTML2, _navigation_sanitizedStringForDisplayInHTML3];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"Open in Apple Maps [Curated Guide Sharing]" value:@"localized string not found" table:0];
  v28 = HTMLStringForURLWithLabel();

  v29 = HTMLBodyWrapperStringWithFormat();

  return v29;
}

+ (void)createHTMLTemplateForPersonalCollectionHandler:(id)handler mapItems:(id)items sharingURL:(id)l completion:(id)completion
{
  handlerCopy = handler;
  itemsCopy = items;
  lCopy = l;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = lCopy;
  v11 = itemsCopy;
  v12 = handlerCopy;
  MUHTMLStringForAnnotatedSnapshotImageWithMapItems();
}

@end