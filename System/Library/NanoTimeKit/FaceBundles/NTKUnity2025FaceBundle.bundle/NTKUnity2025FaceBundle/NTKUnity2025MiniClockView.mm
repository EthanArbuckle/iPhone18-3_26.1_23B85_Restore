@interface NTKUnity2025MiniClockView
- (NTKUnity2025MiniClockView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)updateImageIfHourChanged:(id)changed;
@end

@implementation NTKUnity2025MiniClockView

- (NTKUnity2025MiniClockView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v19.receiver = self;
  v19.super_class = NTKUnity2025MiniClockView;
  v8 = [(CLKUIAnalogTimeView *)&v19 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    v9 = [(NTKFaceBundle *)NTKUnity2025FaceBundle imageWithName:@"MiniClockHour00"];
    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
    view = v8->_view;
    v8->_view = v10;

    [(NTKUnity2025MiniClockView *)v8 insertSubview:v8->_view atIndex:0];
    v12 = [MEMORY[0x277CBB700] now];
    [(NTKUnity2025MiniClockView *)v8 updateImageIfHourChanged:v12];

    objc_initWeak(&location, v8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_23C09CCCC;
    v16[3] = &unk_278BADF40;
    objc_copyWeak(&v17, &location);
    v13 = [timerCopy startUpdatesWithUpdateFrequency:0 withHandler:v16 identificationLog:&unk_284EDCB00];
    token = v8->_token;
    v8->_token = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  if (self->_token)
  {
    clockTimer = [(CLKUITimeView *)self clockTimer];
    [clockTimer stopUpdatesForToken:self->_token];
  }

  v4.receiver = self;
  v4.super_class = NTKUnity2025MiniClockView;
  [(CLKUITimeView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKUnity2025MiniClockView;
  [(CLKUIAnalogTimeView *)&v3 layoutSubviews];
  [(NTKUnity2025MiniClockView *)self bounds];
  [(UIImageView *)self->_view setFrame:?];
}

- (void)updateImageIfHourChanged:(id)changed
{
  v8 = 0;
  getHourAndMinuteFromDate(changed, &v8, &v7);
  v4 = v8;
  if (v8 != self->_hour)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"MiniClockHour%ld%ld", v8 / 10, v8 % 10];
    v5 = [(NTKFaceBundle *)NTKUnity2025FaceBundle imageWithName:v6];
    [(UIImageView *)self->_view setImage:v5];
    self->_hour = v4;
  }
}

- (void)setConfiguration:(id)configuration
{
  v16[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = NTKUnity2025MiniClockView;
  [(CLKUIAnalogTimeView *)&v15 setConfiguration:configurationCopy];
  greyscale = [configurationCopy greyscale];
  layer = [(UIImageView *)self->_view layer];
  v7 = layer;
  if (!greyscale)
  {
    [layer setFilters:MEMORY[0x277CBEBF8]];
    goto LABEL_5;
  }

  filters = [layer filters];
  v9 = [filters count];

  if (v9 != 1)
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
    v14[2] = xmmword_23C0A0A40;
    v14[3] = unk_23C0A0A50;
    v14[4] = xmmword_23C0A0A60;
    v14[0] = xmmword_23C0A0A20;
    v14[1] = unk_23C0A0A30;
    v10 = [MEMORY[0x277CCAE60] valueWithBytes:v14 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    [v7 setValue:v10 forKey:*MEMORY[0x277CDA440]];

    v16[0] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    layer2 = [(UIImageView *)self->_view layer];
    [layer2 setFilters:v11];

LABEL_5:
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end