@interface EnvironmentTableViewCell
- (EnvironmentTableViewCell)initWithReuseIdentifier:(id)a3;
- (void)_configureEnvironmentCell;
- (void)_startObservingEnvironment:(id)a3;
- (void)_startObservingProgressForEnvironment:(id)a3;
- (void)_stopObservingEnvironment;
- (void)_stopObservingProgress;
- (void)configureFromEnvironment:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
@end

@implementation EnvironmentTableViewCell

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = EnvironmentTableViewCell;
  [(EnvironmentTableViewCell *)&v11 layoutSubviews];
  v3 = [(EnvironmentTableViewCell *)self imageView];
  [v3 frame];
  MidX = CGRectGetMidX(v12);
  [(MapsPieProgressView *)self->_progressView bounds];
  v5 = MidX - CGRectGetWidth(v13) * 0.5;
  v6 = [(EnvironmentTableViewCell *)self imageView];
  [v6 frame];
  MidY = CGRectGetMidY(v14);
  [(MapsPieProgressView *)self->_progressView bounds];
  v8 = MidY - CGRectGetHeight(v15) * 0.5;
  [(MapsPieProgressView *)self->_progressView bounds];
  v10 = v9;
  [(MapsPieProgressView *)self->_progressView bounds];
  [(MapsPieProgressView *)self->_progressView setFrame:v5, v8, v10];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_environment == v11)
  {
    [(EnvironmentTableViewCell *)self configureFromEnvironment:?];
  }

  else if (self->_observedProgress == v11)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F7FF28;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = EnvironmentTableViewCell;
    [(EnvironmentTableViewCell *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)configureFromEnvironment:(id)a3
{
  v5 = a3;
  v6 = 8;
  if (self->_environment != v5)
  {
    [(EnvironmentTableViewCell *)self _stopObservingEnvironment];
    [(EnvironmentTableViewCell *)self _startObservingEnvironment:v5];
  }

  objc_storeStrong(&self->_environment, a3);
  v7 = [(GEOEnvironmentInfo *)v5 isActive];
  if (v7)
  {
    v6 = [(GEOEnvironmentInfo *)v5 activationProgress];
    v8 = v6 != 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(EnvironmentTableViewCell *)self imageView];
  [v9 setHidden:v8];

  if (v7)
  {
  }

  v10 = [(GEOEnvironmentInfo *)v5 state];
  loadingView = self->_loadingView;
  if (v10 == 1)
  {
    [(UIActivityIndicatorView *)loadingView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)loadingView stopAnimating];
  }

  v12 = [(GEOEnvironmentInfo *)v5 activationProgress];

  if (v12)
  {
    [(EnvironmentTableViewCell *)self _startObservingProgressForEnvironment:v5];
    [(MapsPieProgressView *)self->_progressView setHidden:0];
  }

  else
  {
    [(MapsPieProgressView *)self->_progressView setHidden:1];
    [(EnvironmentTableViewCell *)self _stopObservingProgress];
  }

  [(UIImageView *)self->_secureEnvironmentImageView setHidden:1];
  v13 = [(GEOEnvironmentInfo *)v5 state];
  if (v13 == 1)
  {
    [(EnvironmentTableViewCell *)self setAccessoryType:0];
    errorButton = self->_loadingView;
    goto LABEL_36;
  }

  if (v13 == 3)
  {
    [(EnvironmentTableViewCell *)self setAccessoryType:0];
    errorButton = self->_errorButton;
LABEL_36:
    v36 = self;
    goto LABEL_38;
  }

  if (v13 == 2)
  {
    [(EnvironmentTableViewCell *)self setAccessoryType:2];
    [(EnvironmentTableViewCell *)self setAccessoryView:0];
    v14 = 1;
    [(EnvironmentTableViewCell *)self setSelectionStyle:1];
    v15 = +[UIColor labelColor];
    v16 = [(EnvironmentTableViewCell *)self textLabel];
    [v16 setTextColor:v15];

    v17 = [(GEOEnvironmentInfo *)v5 resourceManifest];
    v18 = [v17 resources];
    if (!v18)
    {
LABEL_43:

      [(UIImageView *)self->_secureEnvironmentImageView setHidden:v14];
      goto LABEL_44;
    }

    v19 = +[GEOResourceManifestManager modernManager];
    v20 = [v19 activeTileGroup];
    v21 = [v20 dataSet];
    v22 = [v18 preferedURLSetFor:v21];

    if (![v22 hasAuthProxyURL])
    {
      v14 = 1;
LABEL_42:

      goto LABEL_43;
    }

    v39 = v17;
    v23 = [v18 data];
    v24 = GEOGetProxyAuthFromResourceManifest();

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [v24 allValues];
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
LABEL_21:
      v29 = 0;
      while (1)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        if ([*(*(&v40 + 1) + 8 * v29) BOOLValue])
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v27)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:

      v30 = [v18 tileGroups];
      v25 = [v30 firstObject];

      if (!v25 || ![v25 tileSetsCount])
      {
LABEL_33:
        v14 = 1;
LABEL_41:

        v17 = v39;
        goto LABEL_42;
      }

      v31 = 0;
      while (1)
      {
        v32 = [v25 tileSetAtIndex:v31];
        if ([v18 tileSetsCount] > HIDWORD(v32))
        {
          v33 = [v18 tileSets];
          v34 = [v33 objectAtIndexedSubscript:HIDWORD(v32)];

          LOBYTE(v33) = [v34 useAuthProxy];
          if (v33)
          {
            break;
          }
        }

        if (++v31 >= [v25 tileSetsCount])
        {
          goto LABEL_33;
        }
      }
    }

    v14 = 0;
    goto LABEL_41;
  }

  [(EnvironmentTableViewCell *)self setAccessoryType:0];
  v36 = self;
  errorButton = 0;
LABEL_38:
  [(EnvironmentTableViewCell *)v36 setAccessoryView:errorButton];
  [(EnvironmentTableViewCell *)self setSelectionStyle:0];
  v37 = +[UIColor secondaryLabelColor];
  v38 = [(EnvironmentTableViewCell *)self textLabel];
  [v38 setTextColor:v37];

LABEL_44:
}

- (void)_stopObservingProgress
{
  observedProgress = self->_observedProgress;
  if (observedProgress)
  {
    [(NSProgress *)observedProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"isFinished"];
    [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"isCancelled"];
    v4 = self->_observedProgress;
    self->_observedProgress = 0;
  }
}

- (void)_startObservingProgressForEnvironment:(id)a3
{
  v10 = a3;
  v4 = [v10 activationProgress];
  observedProgress = self->_observedProgress;

  if (v4 != observedProgress)
  {
    if (self->_observedProgress)
    {
      [(EnvironmentTableViewCell *)self _stopObservingProgress];
    }

    v6 = [v10 activationProgress];
    v7 = self->_observedProgress;
    self->_observedProgress = v6;

    v8 = self->_observedProgress;
    if (v8)
    {
      [(NSProgress *)v8 fractionCompleted];
      *&v9 = v9;
      [(MapsPieProgressView *)self->_progressView setProgress:*&v9];
      [(NSProgress *)self->_observedProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:0];
      [(NSProgress *)self->_observedProgress addObserver:self forKeyPath:@"isFinished" options:1 context:0];
      [(NSProgress *)self->_observedProgress addObserver:self forKeyPath:@"isCancelled" options:1 context:0];
    }
  }
}

- (void)_stopObservingEnvironment
{
  environment = self->_environment;
  if (environment)
  {
    [(GEOEnvironmentInfo *)environment removeObserver:self forKeyPath:@"state"];
    v4 = self->_environment;

    [(GEOEnvironmentInfo *)v4 removeObserver:self forKeyPath:@"activationProgress"];
  }
}

- (void)_startObservingEnvironment:(id)a3
{
  if (a3 && self->_environment != a3)
  {
    v4 = a3;
    [v4 addObserver:self forKeyPath:@"state" options:1 context:0];
    [v4 addObserver:self forKeyPath:@"activationProgress" options:1 context:0];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = EnvironmentTableViewCell;
  [(EnvironmentTableViewCell *)&v4 prepareForReuse];
  [(EnvironmentTableViewCell *)self _stopObservingProgress];
  [(EnvironmentTableViewCell *)self _stopObservingEnvironment];
  environment = self->_environment;
  self->_environment = 0;
}

- (void)dealloc
{
  [(EnvironmentTableViewCell *)self _stopObservingProgress];
  [(EnvironmentTableViewCell *)self _stopObservingEnvironment];
  v3.receiver = self;
  v3.super_class = EnvironmentTableViewCell;
  [(EnvironmentTableViewCell *)&v3 dealloc];
}

- (EnvironmentTableViewCell)initWithReuseIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = EnvironmentTableViewCell;
  v3 = [(EnvironmentTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(EnvironmentTableViewCell *)v3 _configureEnvironmentCell];
    v5 = v4;
  }

  return v4;
}

- (void)_configureEnvironmentCell
{
  v3 = [UIImage systemImageNamed:@"checkmark"];
  v4 = [(EnvironmentTableViewCell *)self imageView];
  [v4 setImage:v3];

  v5 = +[UIColor tertiaryLabelColor];
  v6 = [(EnvironmentTableViewCell *)self detailTextLabel];
  [v6 setTextColor:v5];

  v7 = [UIButton buttonWithType:118];
  errorButton = self->_errorButton;
  self->_errorButton = v7;

  v9 = +[UIColor systemRedColor];
  [(UIButton *)self->_errorButton setTintColor:v9];

  v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  loadingView = self->_loadingView;
  self->_loadingView = v10;

  v12 = +[UIColor secondaryLabelColor];
  [(UIActivityIndicatorView *)self->_loadingView setColor:v12];

  v13 = [MapsPieProgressView alloc];
  v14 = [(EnvironmentTableViewCell *)self imageView];
  [v14 frame];
  v15 = CGRectGetMidX(v34) + -12.0;
  v16 = [(EnvironmentTableViewCell *)self imageView];
  [v16 frame];
  v17 = [(MapsPieProgressView *)v13 initWithFrame:v15, CGRectGetMidY(v35) + -12.0, 24.0, 24.0];
  progressView = self->_progressView;
  self->_progressView = v17;

  [(MapsPieProgressView *)self->_progressView setHidden:1];
  [(EnvironmentTableViewCell *)self addSubview:self->_progressView];
  v19 = [UIImageView alloc];
  v20 = [UIImage systemImageNamed:@"lock.fill"];
  v21 = [v19 initWithImage:v20];
  secureEnvironmentImageView = self->_secureEnvironmentImageView;
  self->_secureEnvironmentImageView = v21;

  v23 = +[UIColor secondaryLabelColor];
  [(UIImageView *)self->_secureEnvironmentImageView setTintColor:v23];

  [(UIImageView *)self->_secureEnvironmentImageView setHidden:1];
  [(UIImageView *)self->_secureEnvironmentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EnvironmentTableViewCell *)self addSubview:self->_secureEnvironmentImageView];
  v24 = [(UIImageView *)self->_secureEnvironmentImageView firstBaselineAnchor];
  v25 = [(EnvironmentTableViewCell *)self textLabel];
  v26 = [v25 firstBaselineAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v33[0] = v27;
  v28 = [(UIImageView *)self->_secureEnvironmentImageView leadingAnchor];
  v29 = [(EnvironmentTableViewCell *)self textLabel];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToSystemSpacingAfterAnchor:v30 multiplier:1.0];
  v33[1] = v31;
  v32 = [NSArray arrayWithObjects:v33 count:2];
  [NSLayoutConstraint activateConstraints:v32];
}

@end