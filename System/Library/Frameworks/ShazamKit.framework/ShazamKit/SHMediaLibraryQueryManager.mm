@interface SHMediaLibraryQueryManager
- (SHMediaLibraryController)libraryController;
- (SHMediaLibraryQueryManager)initWithClient:(id)client;
- (id)rawSongResponseDataForMediaItemIdentifier:(id)identifier;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
@end

@implementation SHMediaLibraryQueryManager

- (SHMediaLibraryQueryManager)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = SHMediaLibraryQueryManager;
  v6 = [(SHMediaLibraryQueryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
  }

  return v7;
}

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  client = [(SHMediaLibraryQueryManager *)self client];
  type = [client type];

  if (!type || type == 2)
  {
    v12 = NSDebugDescriptionErrorKey;
    v13 = @"Invalid client Bundle ID or Team ID";
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [SHError errorWithCode:400 underlyingError:0 keyOverrides:v8];
    handlerCopy[2](handlerCopy, 0, v9);

    goto LABEL_6;
  }

  if (type == 1)
  {
    libraryController = [(SHMediaLibraryQueryManager *)self libraryController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000306D4;
    v10[3] = &unk_10007DB60;
    v11 = handlerCopy;
    [libraryController _libraryInfoWithCompletionHandler:v10];

    v8 = v11;
LABEL_6:
  }
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  client = [(SHMediaLibraryQueryManager *)self client];
  type = [client type];

  if (type)
  {
    if (type == 2)
    {
      v21 = [SHMediaLibraryQueryParameters alloc];
      resultsLimit = [parametersCopy resultsLimit];
      ascending = [parametersCopy ascending];
      shouldUpdate = [parametersCopy shouldUpdate];
      client2 = [(SHMediaLibraryQueryManager *)self client];
      credentials = [client2 credentials];
      attribution = [credentials attribution];
      containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
      v17 = [v21 initWithResultsLimit:resultsLimit filterOptions:1 ascending:ascending shouldUpdate:shouldUpdate providerIdentifier:containingAppBundleIdentifier excludeCloudMetadata:{objc_msgSend(parametersCopy, "excludeCloudMetadata")}];

      parametersCopy = v17;
    }

    libraryController = [(SHMediaLibraryQueryManager *)self libraryController];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000309B4;
    v22[3] = &unk_10007DB88;
    v23 = handlerCopy;
    [libraryController _queryLibraryWithParameters:parametersCopy completionHandler:v22];

    v19 = v23;
  }

  else
  {
    v24 = NSDebugDescriptionErrorKey;
    v25 = @"Invalid client Bundle ID or Team ID";
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [SHError errorWithCode:400 underlyingError:0 keyOverrides:v19];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
  }
}

- (id)rawSongResponseDataForMediaItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  libraryController = [(SHMediaLibraryQueryManager *)self libraryController];
  v6 = [libraryController rawSongResponseDataForMediaItemIdentifier:identifierCopy];

  return v6;
}

- (SHMediaLibraryController)libraryController
{
  libraryController = self->_libraryController;
  if (!libraryController)
  {
    v4 = [SHMediaLibraryController alloc];
    client = [(SHMediaLibraryQueryManager *)self client];
    credentials = [client credentials];
    attribution = [credentials attribution];
    containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
    client2 = [(SHMediaLibraryQueryManager *)self client];
    credentials2 = [client2 credentials];
    v11 = -[SHMediaLibraryController initWithBundleIdentifier:clientType:](v4, "initWithBundleIdentifier:clientType:", containingAppBundleIdentifier, [credentials2 clientType]);
    v12 = self->_libraryController;
    self->_libraryController = v11;

    libraryController = self->_libraryController;
  }

  return libraryController;
}

@end