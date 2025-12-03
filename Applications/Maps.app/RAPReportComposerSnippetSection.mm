@interface RAPReportComposerSnippetSection
- (BOOL)isCurrentLocation;
- (RAPReportComposerSnippetSection)initWithQuestion:(id)question;
- (double)heightForRowAtIndex:(int64_t)index;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)headerTitle;
@end

@implementation RAPReportComposerSnippetSection

- (double)heightForRowAtIndex:(int64_t)index
{
  snippetStyle = [(RAPSnippetProtocol *)self->_question snippetStyle];
  if (snippetStyle == 2)
  {
    v6 = +[RAPTransitLineTableViewCell measuringCell];
    snippetTransitLine = [(RAPSnippetProtocol *)self->_question snippetTransitLine];
    [v6 setContentsFromTransitLine:snippetTransitLine];
    goto LABEL_7;
  }

  if (snippetStyle == 1)
  {
    v6 = +[(RAPReportComposerTwoLineSnippetTableViewCell *)RAPReportComposerPlaceSnippetTableViewCell];
    snippetTransitLine = [(RAPSnippetProtocol *)self->_question snippetMapItem];
    [v6 setContentsFromMapItem:snippetTransitLine isCurrentLocation:{-[RAPReportComposerSnippetSection isCurrentLocation](self, "isCurrentLocation")}];
LABEL_7:

    tableView = [(RAPTablePartSection *)self tableView];
    [v6 preferredHeightInTableView:tableView];
    v10 = v9;

    return v10;
  }

  if (!snippetStyle)
  {
    return UITableViewAutomaticDimension;
  }

  return result;
}

- (id)cellForRowAtIndex:(int64_t)index
{
  snippetStyle = [(RAPSnippetProtocol *)self->_question snippetStyle];
  if (snippetStyle == 2)
  {
    v10 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:@"ReportedLineSnippet"];
    v6 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:v10];

    if (!v6)
    {
      v11 = [RAPTransitLineTableViewCell alloc];
      v12 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:@"ReportedLineSnippet"];
      v6 = [(RAPTransitLineTableViewCell *)v11 initWithStyle:0 reuseIdentifier:v12];

      [(RAPTransitLineTableViewCell *)v6 setSelectionStyle:0];
    }

    snippetTransitLine = [(RAPSnippetProtocol *)self->_question snippetTransitLine];
    [(RAPTransitLineTableViewCell *)v6 setContentsFromTransitLine:snippetTransitLine];
    goto LABEL_9;
  }

  if (snippetStyle == 1)
  {
    v5 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:@"ReportedPlaceSnippet"];
    v6 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:v5];

    if (!v6)
    {
      v7 = [RAPReportComposerPlaceSnippetTableViewCell alloc];
      v8 = [(RAPTablePartSection *)self namespacedReuseIdentifierWithSuffix:@"ReportedPlaceSnippet"];
      v6 = [(RAPReportComposerTwoLineSnippetTableViewCell *)v7 initWithStyle:0 reuseIdentifier:v8];
    }

    snippetTransitLine = [(RAPSnippetProtocol *)self->_question snippetMapItem];
    [(RAPTransitLineTableViewCell *)v6 setContentsFromMapItem:snippetTransitLine isCurrentLocation:[(RAPReportComposerSnippetSection *)self isCurrentLocation]];
LABEL_9:

    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (BOOL)isCurrentLocation
{
  if (![(RAPSnippetProtocol *)self->_question conformsToProtocol:&OBJC_PROTOCOL___RAPPlaceMenu])
  {
    return 0;
  }

  reportedPlace = [(RAPSnippetProtocol *)self->_question reportedPlace];
  v4 = [reportedPlace source] == 0;

  return v4;
}

- (id)headerTitle
{
  snippetStyle = [(RAPSnippetProtocol *)self->_question snippetStyle];
  if (snippetStyle == 1)
  {
    v3 = @"Name [Report an Issue Place snippet title]";
    goto LABEL_5;
  }

  if (snippetStyle == 2)
  {
    v3 = @"Line [Report an issue Transit Line snippet title]";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (RAPReportComposerSnippetSection)initWithQuestion:(id)question
{
  questionCopy = question;
  v9.receiver = self;
  v9.super_class = RAPReportComposerSnippetSection;
  v6 = [(RAPTablePartSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, question);
    [(RAPSnippetProtocol *)v7->_question addObserver:v7 changeHandler:&stru_101660E18];
  }

  return v7;
}

@end