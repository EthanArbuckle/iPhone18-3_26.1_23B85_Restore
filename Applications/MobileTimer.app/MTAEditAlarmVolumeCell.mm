@interface MTAEditAlarmVolumeCell
- (MTAEditAlarmVolumeCell)initWithFrame:(CGRect)frame;
- (MTAEditAlarmVolumeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTAEditAlarmVolumeCellDelegate)delegate;
- (float)alarmVolume;
- (void)buildVolumeSlider;
- (void)commonInit;
- (void)drawDebugFrames;
- (void)setAlarm:(id)alarm;
- (void)setAlarmVolume:(float)volume;
- (void)setupConstraints;
- (void)soundVolumeChanged:(id)changed;
@end

@implementation MTAEditAlarmVolumeCell

- (MTAEditAlarmVolumeCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MTAEditAlarmVolumeCell;
  v3 = [(MTAEditAlarmVolumeCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTAEditAlarmVolumeCell *)v3 commonInit];
    v5 = v4;
  }

  return v4;
}

- (MTAEditAlarmVolumeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MTAEditAlarmVolumeCell;
  v4 = [(MTAEditAlarmVolumeCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTAEditAlarmVolumeCell *)v4 commonInit];
    v6 = v5;
  }

  return v5;
}

- (void)commonInit
{
  [(MTAEditAlarmVolumeCell *)self buildVolumeSlider];

  [(MTAEditAlarmVolumeCell *)self setupConstraints];
}

- (void)buildVolumeSlider
{
  v3 = objc_alloc_init(UISlider);
  [(MTAEditAlarmVolumeCell *)self setVolumeSlider:v3];

  v15 = [UIColor colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  detailTextLabel = [(MTAEditAlarmVolumeCell *)self detailTextLabel];
  font = [detailTextLabel font];
  [font pointSize];
  v6 = [UIImage mtui_imageWithSymbolName:@"volume.fill" pointSize:v15 color:?];
  volumeSlider = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [volumeSlider setMinimumValueImage:v6];

  detailTextLabel2 = [(MTAEditAlarmVolumeCell *)self detailTextLabel];
  font2 = [detailTextLabel2 font];
  [font2 pointSize];
  v10 = [UIImage mtui_imageWithSymbolName:@"volume.3.fill" pointSize:v15 color:?];
  volumeSlider2 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [volumeSlider2 setMaximumValueImage:v10];

  volumeSlider3 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [volumeSlider3 addTarget:self action:"soundVolumeChanged:" forControlEvents:4096];

  contentView = [(MTAEditAlarmVolumeCell *)self contentView];
  volumeSlider4 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [contentView addSubview:volumeSlider4];
}

- (void)setupConstraints
{
  volumeSlider = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [volumeSlider setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = +[NSMutableArray array];
  contentView = [(MTAEditAlarmVolumeCell *)self contentView];
  volumeSlider2 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  topAnchor = [volumeSlider2 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  [v23 addObject:v8];

  volumeSlider3 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  centerYAnchor = [volumeSlider3 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v23 addObject:v12];

  volumeSlider4 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  leadingAnchor = [volumeSlider4 leadingAnchor];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [v23 addObject:v17];

  volumeSlider5 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  trailingAnchor = [volumeSlider5 trailingAnchor];
  layoutMarginsGuide2 = [contentView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

- (void)drawDebugFrames
{
  v3 = +[UIColor redColor];
  cGColor = [v3 CGColor];
  volumeSlider = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  layer = [volumeSlider layer];
  [layer setBorderColor:cGColor];

  volumeSlider2 = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  layer2 = [volumeSlider2 layer];
  [layer2 setBorderWidth:2.0];

  layer3 = [(MTAEditAlarmVolumeCell *)self layer];
  [layer3 setBorderWidth:2.0];

  v13 = +[UIColor blueColor];
  v10 = v13;
  cGColor2 = [v13 CGColor];
  layer4 = [(MTAEditAlarmVolumeCell *)self layer];
  [layer4 setBorderColor:cGColor2];
}

- (void)soundVolumeChanged:(id)changed
{
  delegate = [(MTAEditAlarmVolumeCell *)self delegate];
  [delegate cellDidEditAlarmVolume:self];
}

- (void)setAlarm:(id)alarm
{
  alarmCopy = alarm;
  objc_storeStrong(&self->_alarm, alarm);
  sound = [alarmCopy sound];
  isSilent = [sound isSilent];

  if (isSilent)
  {
    [(MTAEditAlarmVolumeCell *)self setAlarmVolume:0.0];
  }

  else
  {
    sound2 = [(MTAlarm *)self->_alarm sound];
    soundVolume = [sound2 soundVolume];
    [soundVolume floatValue];
    [(MTAEditAlarmVolumeCell *)self setAlarmVolume:?];
  }

  volumeSlider = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [volumeSlider setEnabled:isSilent ^ 1];
}

- (float)alarmVolume
{
  volumeSlider = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  [volumeSlider value];
  v4 = v3;

  return v4;
}

- (void)setAlarmVolume:(float)volume
{
  volumeSlider = [(MTAEditAlarmVolumeCell *)self volumeSlider];
  *&v4 = volume;
  [volumeSlider setValue:v4];
}

- (MTAEditAlarmVolumeCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end