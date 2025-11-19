@interface CNIndexExtensionRequestHandler
- (CNIndexExtensionRequestHandler)init;
- (id)contactForContactIdentifier:(id)a3 keysToFetch:(id)a4;
- (id)dataForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 error:(id *)a6;
- (id)draggingContactForIdentifier:(id)a3;
- (id)fileURLForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 inPlace:(BOOL)a6 error:(id *)a7;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation CNIndexExtensionRequestHandler

- (CNIndexExtensionRequestHandler)init
{
  v13.receiver = self;
  v13.super_class = CNIndexExtensionRequestHandler;
  v2 = [(CNIndexExtensionRequestHandler *)&v13 init];
  if (v2)
  {
    v3 = +[CNContactsEnvironment currentEnvironment];
    v4 = [v3 loggerProvider];
    v5 = [v4 spotlightIndexingLogger];
    logger = v2->_logger;
    v2->_logger = v5;

    v7 = +[CNXPCContactsSupport sharedInstance];
    contactsSupport = v2->_contactsSupport;
    v2->_contactsSupport = v7;

    v9 = objc_alloc_init(CNContactStore);
    store = v2->_store;
    v2->_store = v9;

    v11 = v2;
  }

  return v2;
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v5 = a4;
  v6 = [(CNIndexExtensionRequestHandler *)self logger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000010A8;
  v8[3] = &unk_100004108;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 reindexingAllSearchableItems:v8];
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CNIndexExtensionRequestHandler *)self logger];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000011DC;
  v12[3] = &unk_100004130;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 reindexingSearchableItemsWithIdentifiers:v12];
}

- (id)dataForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = [(CNIndexExtensionRequestHandler *)self draggingContactForIdentifier:a4];
  v10 = [v9 dataRepresentationForType:v8];

  return v10;
}

- (id)fileURLForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 inPlace:(BOOL)a6 error:(id *)a7
{
  v7 = [(CNIndexExtensionRequestHandler *)self draggingContactForIdentifier:a4];
  v8 = [v7 fileURLRepresentation];

  return v8;
}

- (id)draggingContactForIdentifier:(id)a3
{
  v11 = CNContactIdentifierKey;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = [(CNIndexExtensionRequestHandler *)self contactForContactIdentifier:v4 keysToFetch:v5, v11];

  if (v6)
  {
    v7 = [CNDraggingContact alloc];
    v8 = [(CNIndexExtensionRequestHandler *)self store];
    v9 = [v7 initWithContact:v6 contactStore:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)contactForContactIdentifier:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNIndexExtensionRequestHandler *)self store];
  v13 = 0;
  v9 = [v8 unifiedContactWithIdentifier:v6 keysToFetch:v7 error:&v13];

  v10 = v13;
  if (v10 || !v9)
  {
    v11 = [(CNIndexExtensionRequestHandler *)self store];
    NSLog(@"Can't fetch contact with identifier %@, in store %@, with error: %@", v6, v11, v10);
  }

  return v9;
}

@end