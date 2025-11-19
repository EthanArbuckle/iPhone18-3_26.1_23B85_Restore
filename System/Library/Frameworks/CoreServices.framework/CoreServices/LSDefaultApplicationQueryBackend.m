@interface LSDefaultApplicationQueryBackend
- (BOOL)_isApp:(id)a3 defaultForCategory:(unint64_t)a4;
- (LSDefaultApplicationQueryBackend)initWithDatastore:(id)a3 defaultAppEvaluator:(id)a4;
- (id)refreshQueryResultForApplication:(id)a3 category:(unint64_t)a4;
@end

@implementation LSDefaultApplicationQueryBackend

- (LSDefaultApplicationQueryBackend)initWithDatastore:(id)a3 defaultAppEvaluator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LSDefaultApplicationQueryBackend;
  v9 = [(LSDefaultApplicationQueryBackend *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_datastore, a3);
    objc_storeStrong(&v10->_defaultAppEvaluator, a4);
  }

  return v10;
}

- (BOOL)_isApp:(id)a3 defaultForCategory:(unint64_t)a4
{
  v6 = a3;
  v7 = [(LSDefaultApplicationQueryDefaultAppEvaluator *)self->_defaultAppEvaluator URLOfDefaultAppForCategory:a4];
  v8 = [v6 URL];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (id)refreshQueryResultForApplication:(id)a3 category:(unint64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(LSDefaultApplicationQueryDatastore *)self->_datastore entryForApplication:v6 category:a4];
  v8 = _LSDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 bundleIdentifier];
    v10 = v9;
    v11 = "";
    *v35 = 136315650;
    if (!v7)
    {
      v11 = "no ";
    }

    *&v35[4] = v11;
    v36 = 2112;
    v37 = v9;
    v38 = 2048;
    v39 = a4;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "%sentry for app %@ in category %lu", v35, 0x20u);
  }

  if (v7)
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 windowOpenDates];
      *v35 = 138412290;
      *&v35[4] = v13;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "window open dates %@", v35, 0xCu);
    }
  }

  v14 = [MEMORY[0x1E695DF00] now];
  if (!v7)
  {
    goto LABEL_18;
  }

  v15 = [v7 newestWindowOpenDate];
  [v14 timeIntervalSinceDate:v15];
  v17 = v16 < 3600.0;

  if (v17)
  {
    v18 = [(LSDefaultApplicationQueryBackend *)self _isApp:v6 defaultForCategory:a4];
    v19 = [v7 updatedEntryWithRefreshDate:v14 defaultForCategory:v18];
    [(LSDefaultApplicationQueryDatastore *)self->_datastore setEntry:v19 forApplication:v6 category:a4];
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

  v23 = [v7 oldestWindowOpenDate];
  [v14 timeIntervalSinceDate:v23];
  if (v24 >= 31536000.0)
  {

    goto LABEL_18;
  }

  v25 = [v7 isOpenWindowGroupFull];

  if ((v25 & 1) == 0)
  {
LABEL_18:
    v31 = [(LSDefaultApplicationQueryBackend *)self _isApp:v6 defaultForCategory:a4];
    if (v7)
    {
      v32 = [v7 updatedEntryRotatingInWindowOpenDate:v14 refreshDate:v14 defaultForCategory:v31];
    }

    else
    {
      v32 = [[LSDefaultApplicationQueryEntry alloc] initWithWindowOpenDate:v14 refreshDate:v14 defaultForCategory:v31];
    }

    v19 = v32;
    [(LSDefaultApplicationQueryDatastore *)self->_datastore setEntry:v32 forApplication:v6 category:a4];
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

  v26 = [v7 oldestWindowOpenDate];
  v19 = [v26 dateByAddingTimeInterval:31536000.0];

  v27 = [LSDefaultApplicationQueryResult alloc];
  v28 = [v7 refreshDate];
  v20 = -[LSDefaultApplicationQueryResult initWithReferenceDate:didRefresh:refreshAfter:defaultForCategory:](v27, "initWithReferenceDate:didRefresh:refreshAfter:defaultForCategory:", v28, 0, v19, [v7 isDefaultForCategory]);

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