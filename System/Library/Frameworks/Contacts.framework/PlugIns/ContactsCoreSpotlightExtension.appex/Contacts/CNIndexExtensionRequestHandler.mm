@interface CNIndexExtensionRequestHandler
- (CNIndexExtensionRequestHandler)init;
- (id)contactForContactIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error;
- (id)draggingContactForIdentifier:(id)identifier;
- (id)fileURLForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier inPlace:(BOOL)place error:(id *)error;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
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
    loggerProvider = [v3 loggerProvider];
    spotlightIndexingLogger = [loggerProvider spotlightIndexingLogger];
    logger = v2->_logger;
    v2->_logger = spotlightIndexingLogger;

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

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  logger = [(CNIndexExtensionRequestHandler *)self logger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000010A8;
  v8[3] = &unk_100004108;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [logger reindexingAllSearchableItems:v8];
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  logger = [(CNIndexExtensionRequestHandler *)self logger];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000011DC;
  v12[3] = &unk_100004130;
  v12[4] = self;
  v13 = identifiersCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  [logger reindexingSearchableItemsWithIdentifiers:v12];
}

- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error
{
  typeIdentifierCopy = typeIdentifier;
  v9 = [(CNIndexExtensionRequestHandler *)self draggingContactForIdentifier:identifier];
  v10 = [v9 dataRepresentationForType:typeIdentifierCopy];

  return v10;
}

- (id)fileURLForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier inPlace:(BOOL)place error:(id *)error
{
  v7 = [(CNIndexExtensionRequestHandler *)self draggingContactForIdentifier:identifier];
  fileURLRepresentation = [v7 fileURLRepresentation];

  return fileURLRepresentation;
}

- (id)draggingContactForIdentifier:(id)identifier
{
  v11 = CNContactIdentifierKey;
  identifierCopy = identifier;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = [(CNIndexExtensionRequestHandler *)self contactForContactIdentifier:identifierCopy keysToFetch:v5, v11];

  if (v6)
  {
    v7 = [CNDraggingContact alloc];
    store = [(CNIndexExtensionRequestHandler *)self store];
    v9 = [v7 initWithContact:v6 contactStore:store];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)contactForContactIdentifier:(id)identifier keysToFetch:(id)fetch
{
  identifierCopy = identifier;
  fetchCopy = fetch;
  store = [(CNIndexExtensionRequestHandler *)self store];
  v13 = 0;
  v9 = [store unifiedContactWithIdentifier:identifierCopy keysToFetch:fetchCopy error:&v13];

  v10 = v13;
  if (v10 || !v9)
  {
    store2 = [(CNIndexExtensionRequestHandler *)self store];
    NSLog(@"Can't fetch contact with identifier %@, in store %@, with error: %@", identifierCopy, store2, v10);
  }

  return v9;
}

@end