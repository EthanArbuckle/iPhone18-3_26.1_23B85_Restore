@interface GeoRequestResponseLogDetailViewController
- (GeoRequestResponseLogDetailViewController)initWithEvent:(id)a3;
- (void)_showPlaceCard;
- (void)_showPlaceCardAt:(unint64_t)a3;
- (void)_showShareAction;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchFor:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GeoRequestResponseLogDetailViewController

- (void)searchBarCancelButtonClicked:(id)a3
{
  p_lastHighlightedRange = &self->_lastHighlightedRange;
  if (self->_lastHighlightedRange.length)
  {
    [(NSMutableAttributedString *)self->_attributedText removeAttribute:NSBackgroundColorAttributeName range:p_lastHighlightedRange->location];
    [(UITextView *)self->_textView setAttributedText:self->_attributedText];
    *p_lastHighlightedRange = xmmword_1012127F0;
  }

  attributedText = self->_attributedText;
  v6 = +[UIColor systemYellowColor];
  [(NSMutableAttributedString *)attributedText addAttribute:NSBackgroundColorAttributeName value:v6 range:p_lastHighlightedRange->location, p_lastHighlightedRange->length];

  textView = self->_textView;

  [(UITextView *)textView scrollRangeToVisible:0, 1];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v5 = [a3 searchBar];
  v4 = [v5 text];
  [(GeoRequestResponseLogDetailViewController *)self searchFor:v4];
}

- (void)searchFor:(id)a3
{
  v4 = [(NSString *)self->_text rangeOfString:a3 options:1];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    p_lastHighlightedRange = &self->_lastHighlightedRange;
    if (self->_lastHighlightedRange.length)
    {
      [(NSMutableAttributedString *)self->_attributedText removeAttribute:NSBackgroundColorAttributeName range:p_lastHighlightedRange->location];
    }

    p_lastHighlightedRange->location = v6;
    self->_lastHighlightedRange.length = v7;
    attributedText = self->_attributedText;
    v10 = +[UIColor systemYellowColor];
    [(NSMutableAttributedString *)attributedText addAttribute:NSBackgroundColorAttributeName value:v10 range:p_lastHighlightedRange->location, self->_lastHighlightedRange.length];

    [(UITextView *)self->_textView setAttributedText:self->_attributedText];
    textView = self->_textView;

    [(UITextView *)textView scrollRangeToVisible:v6, v7];
  }
}

- (void)_showPlaceCardAt:(unint64_t)a3
{
  v5 = [MUPlaceViewController alloc];
  v6 = [MKMapItem alloc];
  v7 = [(NSArray *)self->_mapItems objectAtIndexedSubscript:a3];
  v8 = [v6 initWithGeoMapItem:v7 isPlaceHolderPlace:0];
  v10 = [v5 initWithMapItem:v8];

  v9 = [(GeoRequestResponseLogDetailViewController *)self navigationController];
  [v9 pushViewController:v10 animated:1];
}

- (void)_showShareAction
{
  v3 = [UIActivityViewController alloc];
  text = self->_text;
  v4 = [NSArray arrayWithObjects:&text count:1];
  v5 = [v3 initWithActivityItems:v4 applicationActivities:0];

  v10[0] = UIActivityTypePostToFacebook;
  v10[1] = UIActivityTypePostToWeibo;
  v10[2] = UIActivityTypePrint;
  v10[3] = UIActivityTypeAssignToContact;
  v10[4] = UIActivityTypeSaveToCameraRoll;
  v10[5] = UIActivityTypeAddToReadingList;
  v10[6] = UIActivityTypePostToFlickr;
  v10[7] = UIActivityTypePostToVimeo;
  v10[8] = UIActivityTypePostToTencentWeibo;
  v10[9] = UIActivityTypeOpenInIBooks;
  v10[10] = UIActivityTypeMarkupAsPDF;
  v10[11] = UIActivityTypeSharePlay;
  v10[12] = UIActivityTypeCollaborationInviteWithLink;
  v10[13] = UIActivityTypeCollaborationCopyLink;
  v10[14] = UIActivityTypeAddToHomeScreen;
  v6 = [NSArray arrayWithObjects:v10 count:15];
  [v5 setExcludedActivityTypes:v6];
  v7 = [(GEORequestResponsePersistedEvent *)self->_event identifier];
  [v5 setTitle:v7];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(GeoRequestResponseLogDetailViewController *)self view];
    v9 = [v5 popoverPresentationController];
    [v9 setSourceView:v8];
  }

  [(GeoRequestResponseLogDetailViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_showPlaceCard
{
  if ([(NSArray *)self->_mapItems count]== 1)
  {

    [(GeoRequestResponseLogDetailViewController *)self _showPlaceCardAt:0];
  }

  else
  {
    v3 = [UIAlertController alertControllerWithTitle:@"Select Place" message:@"Multiple Places in the result preferredStyle:please select one", 0];
    mapItems = self->_mapItems;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1005C5374;
    v10 = &unk_10162C780;
    v11 = v3;
    v12 = self;
    v5 = v3;
    [(NSArray *)mapItems enumerateObjectsUsingBlock:&v7];
    v6 = [UIAlertAction actionWithTitle:@"Nevermind" style:1 handler:0, v7, v8, v9, v10];
    [v5 addAction:v6];

    [(GeoRequestResponseLogDetailViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = GeoRequestResponseLogDetailViewController;
  [(GeoRequestResponseLogDetailViewController *)&v15 viewWillAppear:a3];
  v4 = [(GEORequestResponsePersistedEvent *)self->_event decodedMessage];
  v5 = [v4 jsonRepresentation];

  v6 = [NSJSONSerialization dataWithJSONObject:v5 options:3 error:0];
  v7 = [[NSString alloc] initWithData:v6 encoding:4];
  text = self->_text;
  self->_text = v7;

  v9 = [NSMutableAttributedString alloc];
  v10 = self->_text;
  v16 = NSForegroundColorAttributeName;
  v11 = +[UIColor labelColor];
  v17 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = [v9 initWithString:v10 attributes:v12];
  attributedText = self->_attributedText;
  self->_attributedText = v13;

  [(UITextView *)self->_textView setAttributedText:self->_attributedText];
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = GeoRequestResponseLogDetailViewController;
  [(GeoRequestResponseLogDetailViewController *)&v32 viewDidLoad];
  v3 = [(UISearchController *)self->_searchController searchBar];
  [v3 setDelegate:self];

  v4 = objc_alloc_init(NSMutableArray);
  if ([(NSArray *)self->_mapItems count])
  {
    v5 = [[UIBarButtonItem alloc] initWithTitle:@"PlaceCard" style:0 target:self action:"_showPlaceCard"];
    [v4 addObject:v5];
  }

  v31 = [[UIBarButtonItem alloc] initWithTitle:@"Share" style:0 target:self action:"_showShareAction"];
  [v4 addObject:v31];
  v6 = [(GeoRequestResponseLogDetailViewController *)self navigationItem];
  [v6 setRightBarButtonItems:v4];

  searchController = self->_searchController;
  v8 = [(GeoRequestResponseLogDetailViewController *)self navigationItem];
  [v8 setSearchController:searchController];

  v9 = objc_alloc_init(UITextView);
  textView = self->_textView;
  self->_textView = v9;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setSelectable:1];
  v11 = [(UISearchController *)self->_searchController searchBar];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(GeoRequestResponseLogDetailViewController *)self view];
  [v12 addSubview:self->_textView];

  v30 = [(GeoRequestResponseLogDetailViewController *)self view];
  v29 = [v30 topAnchor];
  v28 = [(UITextView *)self->_textView topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[0] = v27;
  v26 = [(GeoRequestResponseLogDetailViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [(UITextView *)self->_textView leadingAnchor];
  v13 = [v24 constraintEqualToAnchor:v23];
  v33[1] = v13;
  v14 = [(GeoRequestResponseLogDetailViewController *)self view];
  v15 = [v14 trailingAnchor];
  [(UITextView *)self->_textView trailingAnchor];
  v16 = v25 = v4;
  v17 = [v15 constraintEqualToAnchor:v16];
  v33[2] = v17;
  v18 = [(GeoRequestResponseLogDetailViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [(UITextView *)self->_textView bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v33[3] = v21;
  v22 = [NSArray arrayWithObjects:v33 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (GeoRequestResponseLogDetailViewController)initWithEvent:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = GeoRequestResponseLogDetailViewController;
  v6 = [(GeoRequestResponseLogDetailViewController *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
    v7->_lastHighlightedRange = xmmword_1012127F0;
    if ([(GEORequestResponsePersistedEvent *)v7->_event eventType]== 2 && [(GEORequestResponsePersistedEvent *)v7->_event messageType]== 60)
    {
      v24 = v5;
      v8 = [(GEORequestResponsePersistedEvent *)v7->_event decodedMessage];
      v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 mapsResultsCount]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = v8;
      v10 = [v8 mapsResults];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            if ([v15 hasPlace])
            {
              v16 = [v15 place];
              v17 = [GEOMapItemStorage mapItemStorageForPlaceData:v16];

              if (v17)
              {
                [v9 addObject:v17];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v12);
      }

      if ([v9 count])
      {
        v18 = [v9 copy];
        mapItems = v7->_mapItems;
        v7->_mapItems = v18;
      }

      v5 = v24;
    }

    v20 = objc_alloc_init(UISearchController);
    searchController = v7->_searchController;
    v7->_searchController = v20;

    [(UISearchController *)v7->_searchController setDelegate:v7];
    [(UISearchController *)v7->_searchController setActive:1];
    [(UISearchController *)v7->_searchController setSearchResultsUpdater:v7];
    [(UISearchController *)v7->_searchController setObscuresBackgroundDuringPresentation:0];
  }

  return v7;
}

@end