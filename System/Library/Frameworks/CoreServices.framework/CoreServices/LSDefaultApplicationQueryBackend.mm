@interface LSDefaultApplicationQueryBackend
- (BOOL)_isApp:(id)app defaultForCategory:(unint64_t)category;
- (LSDefaultApplicationQueryBackend)initWithDatastore:(id)datastore defaultAppEvaluator:(id)evaluator;
- (id)refreshQueryResultForApplication:(id)application category:(unint64_t)category;
@end

@implementation LSDefaultApplicationQueryBackend

- (LSDefaultApplicationQueryBackend)initWithDatastore:(id)datastore defaultAppEvaluator:(id)evaluator
{
  datastoreCopy = datastore;
  evaluatorCopy = evaluator;
  v12.receiver = self;
  v12.super_class = LSDefaultApplicationQueryBackend;
  v9 = [(LSDefaultApplicationQueryBackend *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_datastore, datastore);
    objc_storeStrong(&v10->_defaultAppEvaluator, evaluator);
  }

  return v10;
}

- (BOOL)_isApp:(id)app defaultForCategory:(unint64_t)category
{
  appCopy = app;
  v7 = [(LSDefaultApplicationQueryDefaultAppEvaluator *)self->_defaultAppEvaluator URLOfDefaultAppForCategory:category];
  v8 = [appCopy URL];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (id)refreshQueryResultForApplication:(id)application category:(unint64_t)category
{
  v40 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v7 = [(LSDefaultApplicationQueryDatastore *)self->_datastore entryForApplication:applicationCopy category:category];
  v8 = _LSDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v10 = bundleIdentifier;
    v11 = "";
    *v35 = 136315650;
    if (!v7)
    {
      v11 = "no ";
    }

    *&v35[4] = v11;
    v36 = 2112;
    v37 = bundleIdentifier;
    v38 = 2048;
    categoryCopy = category;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "%sentry for app %@ in category %lu", v35, 0x20u);
  }

  if (v7)
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      windowOpenDates = [v7 windowOpenDates];
      *v35 = 138412290;
      *&v35[4] = windowOpenDates;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "window open dates %@", v35, 0xCu);
    }
  }

  v14 = [MEMORY[0x1E695DF00] now];
  if (!v7)
  {
    goto LABEL_18;
  }

  newestWindowOpenDate = [v7 newestWindowOpenDate];
  [v14 timeIntervalSinceDate:newestWindowOpenDate];
  v17 = v16 < 3600.0;

  if (v17)
  {
    v18 = [(LSDefaultApplicationQueryBackend *)self _isApp:applicationCopy defaultForCategory:category];
    v19 = [v7 updatedEntryWithRefreshDate:v14 defaultForCategory:v18];
    [(LSDefaultApplicationQueryDatastore *)self->_datastore setEntry:v19 forApplication:applicationCopy category:category];
    v20 = [[LSDefaultApplicationQueryResult alloc] initWithReferenceDate:v14 didRefresh:1 refreshAfter:0 defaultForCategory:v18];
    v21 = _LSDefaultLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *v35 = 138412546;
    *&v35[4] = v14;
    v36 = 2112;
    v37 = v20;
    v22 = "refreshed open window at %@, returning %@";
    goto LABEL_23;
  }

  oldestWindowOpenDate = [v7 oldestWindowOpenDate];
  [v14 timeIntervalSinceDate:oldestWindowOpenDate];
  if (v24 >= 31536000.0)
  {

    goto LABEL_18;
  }

  isOpenWindowGroupFull = [v7 isOpenWindowGroupFull];

  if ((isOpenWindowGroupFull & 1) == 0)
  {
LABEL_18:
    v31 = [(LSDefaultApplicationQueryBackend *)self _isApp:applicationCopy defaultForCategory:category];
    if (v7)
    {
      v32 = [v7 updatedEntryRotatingInWindowOpenDate:v14 refreshDate:v14 defaultForCategory:v31];
    }

    else
    {
      v32 = [[LSDefaultApplicationQueryEntry alloc] initWithWindowOpenDate:v14 refreshDate:v14 defaultForCategory:v31];
    }

    v19 = v32;
    [(LSDefaultApplicationQueryDatastore *)self->_datastore setEntry:v32 forApplication:applicationCopy category:category];
    v20 = [[LSDefaultApplicationQueryResult alloc] initWithReferenceDate:v14 didRefresh:1 refreshAfter:0 defaultForCategory:v31];
    v21 = _LSDefaultLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *v35 = 138412546;
    *&v35[4] = v14;
    v36 = 2112;
    v37 = v20;
    v22 = "opened new window at %@, returning %@";
LABEL_23:
    v29 = v21;
    v30 = 22;
    goto LABEL_24;
  }

  oldestWindowOpenDate2 = [v7 oldestWindowOpenDate];
  v19 = [oldestWindowOpenDate2 dateByAddingTimeInterval:31536000.0];

  v27 = [LSDefaultApplicationQueryResult alloc];
  refreshDate = [v7 refreshDate];
  v20 = -[LSDefaultApplicationQueryResult initWithReferenceDate:didRefresh:refreshAfter:defaultForCategory:](v27, "initWithReferenceDate:didRefresh:refreshAfter:defaultForCategory:", refreshDate, 0, v19, [v7 isDefaultForCategory]);

  v21 = _LSDefaultLog();
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  *v35 = 138412290;
  *&v35[4] = v20;
  v22 = "stale windows, returning %@";
  v29 = v21;
  v30 = 12;
LABEL_24:
  _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, v22, v35, v30);
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];

  return v20;
}

@end