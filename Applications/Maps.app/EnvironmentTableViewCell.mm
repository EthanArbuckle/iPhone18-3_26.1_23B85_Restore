@interface EnvironmentTableViewCell
- (EnvironmentTableViewCell)initWithReuseIdentifier:(id)identifier;
- (void)_configureEnvironmentCell;
- (void)_startObservingEnvironment:(id)environment;
- (void)_startObservingProgressForEnvironment:(id)environment;
- (void)_stopObservingEnvironment;
- (void)_stopObservingProgress;
- (void)configureFromEnvironment:(id)environment;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
@end

@implementation EnvironmentTableViewCell

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = EnvironmentTableViewCell;
  [(EnvironmentTableViewCell *)&v11 layoutSubviews];
  imageView = [(EnvironmentTableViewCell *)self imageView];
  [imageView frame];
  MidX = CGRectGetMidX(v12);
  [(MapsPieProgressView *)self->_progressView bounds];
  v5 = MidX - CGRectGetWidth(v13) * 0.5;
  imageView2 = [(EnvironmentTableViewCell *)self imageView];
  [imageView2 frame];
  MidY = CGRectGetMidY(v14);
  [(MapsPieProgressView *)self->_progressView bounds];
  v8 = MidY - CGRectGetHeight(v15) * 0.5;
  [(MapsPieProgressView *)self->_progressView bounds];
  v10 = v9;
  [(MapsPieProgressView *)self->_progressView bounds];
  [(MapsPieProgressView *)self->_progressView setFrame:v5, v8, v10];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_environment == objectCopy)
  {
    [(EnvironmentTableViewCell *)self configureFromEnvironment:?];
  }

  else if (self->_observedProgress == objectCopy)
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
    [(EnvironmentTableViewCell *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)configureFromEnvironment:(id)environment
{
  environmentCopy = environment;
  activationProgress = 8;
  if (self->_environment != environmentCopy)
  {
    [(EnvironmentTableViewCell *)self _stopObservingEnvironment];
    [(EnvironmentTableViewCell *)self _startObservingEnvironment:environmentCopy];
  }

  objc_storeStrong(&self->_environment, environment);
  isActive = [(GEOEnvironmentInfo *)environmentCopy isActive];
  if (isActive)
  {
    activationProgress = [(GEOEnvironmentInfo *)environmentCopy activationProgress];
    v8 = activationProgress != 0;
  }

  else
  {
    v8 = 1;
  }

  imageView = [(EnvironmentTableViewCell *)self imageView];
  [imageView setHidden:v8];

  if (isActive)
  {
  }

  state = [(GEOEnvironmentInfo *)environmentCopy state];
  loadingView = self->_loadingView;
  if (state == 1)
  {
    [(UIActivityIndicatorView *)loadingView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)loadingView stopAnimating];
  }

  activationProgress2 = [(GEOEnvironmentInfo *)environmentCopy activationProgress];

  if (activationProgress2)
  {
    [(EnvironmentTableViewCell *)self _startObservingProgressForEnvironment:environmentCopy];
    [(MapsPieProgressView *)self->_progressView setHidden:0];
  }

  else
  {
    [(MapsPieProgressView *)self->_progressView setHidden:1];
    [(EnvironmentTableViewCell *)self _stopObservingProgress];
  }

  [(UIImageView *)self->_secureEnvironmentImageView setHidden:1];
  state2 = [(GEOEnvironmentInfo *)environmentCopy state];
  if (state2 == 1)
  {
    [(EnvironmentTableViewCell *)self setAccessoryType:0];
    errorButton = self->_loadingView;
    goto LABEL_36;
  }

  if (state2 == 3)
  {
    [(EnvironmentTableViewCell *)self setAccessoryType:0];
    errorButton = self->_errorButton;
LABEL_36:
    selfCopy2 = self;
    goto LABEL_38;
  }

  if (state2 == 2)
  {
    [(EnvironmentTableViewCell *)self setAccessoryType:2];
    [(EnvironmentTableViewCell *)self setAccessoryView:0];
    v14 = 1;
    [(EnvironmentTableViewCell *)self setSelectionStyle:1];
    v15 = +[UIColor labelColor];
    textLabel = [(EnvironmentTableViewCell *)self textLabel];
    [textLabel setTextColor:v15];

    resourceManifest = [(GEOEnvironmentInfo *)environmentCopy resourceManifest];
    resources = [resourceManifest resources];
    if (!resources)
    {
LABEL_43:

      [(UIImageView *)self->_secureEnvironmentImageView setHidden:v14];
      goto LABEL_44;
    }

    v19 = +[GEOResourceManifestManager modernManager];
    activeTileGroup = [v19 activeTileGroup];
    dataSet = [activeTileGroup dataSet];
    v22 = [resources preferedURLSetFor:dataSet];

    if (![v22 hasAuthProxyURL])
    {
      v14 = 1;
LABEL_42:

      goto LABEL_43;
    }

    v39 = resourceManifest;
    data = [resources data];
    v24 = GEOGetProxyAuthFromResourceManifest();

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    allValues = [v24 allValues];
    v26 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v40 + 1) + 8 * v29) BOOLValue])
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
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

      tileGroups = [resources tileGroups];
      allValues = [tileGroups firstObject];

      if (!allValues || ![allValues tileSetsCount])
      {
LABEL_33:
        v14 = 1;
LABEL_41:

        resourceManifest = v39;
        goto LABEL_42;
      }

      v31 = 0;
      while (1)
      {
        v32 = [allValues tileSetAtIndex:v31];
        if ([resources tileSetsCount] > HIDWORD(v32))
        {
          tileSets = [resources tileSets];
          v34 = [tileSets objectAtIndexedSubscript:HIDWORD(v32)];

          LOBYTE(tileSets) = [v34 useAuthProxy];
          if (tileSets)
          {
            break;
          }
        }

        if (++v31 >= [allValues tileSetsCount])
        {
          goto LABEL_33;
        }
      }
    }

    v14 = 0;
    goto LABEL_41;
  }

  [(EnvironmentTableViewCell *)self setAccessoryType:0];
  selfCopy2 = self;
  errorButton = 0;
LABEL_38:
  [(EnvironmentTableViewCell *)selfCopy2 setAccessoryView:errorButton];
  [(EnvironmentTableViewCell *)self setSelectionStyle:0];
  v37 = +[UIColor secondaryLabelColor];
  textLabel2 = [(EnvironmentTableViewCell *)self textLabel];
  [textLabel2 setTextColor:v37];

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

- (void)_startObservingProgressForEnvironment:(id)environment
{
  environmentCopy = environment;
  activationProgress = [environmentCopy activationProgress];
  observedProgress = self->_observedProgress;

  if (activationProgress != observedProgress)
  {
    if (self->_observedProgress)
    {
      [(EnvironmentTableViewCell *)self _stopObservingProgress];
    }

    activationProgress2 = [environmentCopy activationProgress];
    v7 = self->_observedProgress;
    self->_observedProgress = activationProgress2;

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

- (void)_startObservingEnvironment:(id)environment
{
  if (environment && self->_environment != environment)
  {
    environmentCopy = environment;
    [environmentCopy addObserver:self forKeyPath:@"state" options:1 context:0];
    [environmentCopy addObserver:self forKeyPath:@"activationProgress" options:1 context:0];
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

- (EnvironmentTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EnvironmentTableViewCell;
  v3 = [(EnvironmentTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
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
  imageView = [(EnvironmentTableViewCell *)self imageView];
  [imageView setImage:v3];

  v5 = +[UIColor tertiaryLabelColor];
  detailTextLabel = [(EnvironmentTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v5];

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
  imageView2 = [(EnvironmentTableViewCell *)self imageView];
  [imageView2 frame];
  v15 = CGRectGetMidX(v34) + -12.0;
  imageView3 = [(EnvironmentTableViewCell *)self imageView];
  [imageView3 frame];
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
  firstBaselineAnchor = [(UIImageView *)self->_secureEnvironmentImageView firstBaselineAnchor];
  textLabel = [(EnvironmentTableViewCell *)self textLabel];
  firstBaselineAnchor2 = [textLabel firstBaselineAnchor];
  v27 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v33[0] = v27;
  leadingAnchor = [(UIImageView *)self->_secureEnvironmentImageView leadingAnchor];
  textLabel2 = [(EnvironmentTableViewCell *)self textLabel];
  trailingAnchor = [textLabel2 trailingAnchor];
  v31 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
  v33[1] = v31;
  v32 = [NSArray arrayWithObjects:v33 count:2];
  [NSLayoutConstraint activateConstraints:v32];
}

@end