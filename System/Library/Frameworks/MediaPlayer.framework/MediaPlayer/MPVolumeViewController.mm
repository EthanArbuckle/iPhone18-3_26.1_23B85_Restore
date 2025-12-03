@interface MPVolumeViewController
- (CGSize)preferredContentSize;
- (MPVolumeViewController)init;
- (void)viewDidLoad;
@end

@implementation MPVolumeViewController

- (CGSize)preferredContentSize
{
  v2 = 44.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)viewDidLoad
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MPVolumeViewController;
  [(MPVolumeViewController *)&v9 viewDidLoad];
  view = [(MPVolumeViewController *)self view];
  [(MPVolumeView *)self->_volumeView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_volumeView];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_volumeView attribute:7 relatedBy:0 toItem:view attribute:7 multiplier:1.0 constant:-31.0];
  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_volumeView attribute:8 relatedBy:0 toItem:view attribute:8 multiplier:1.0 constant:0.0];
  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_volumeView attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_volumeView attribute:10 relatedBy:0 toItem:view attribute:10 multiplier:1.0 constant:10.0];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  [view addConstraints:v8];
}

- (MPVolumeViewController)init
{
  v7.receiver = self;
  v7.super_class = MPVolumeViewController;
  v2 = [(MPVolumeViewController *)&v7 init];
  if (v2)
  {
    v3 = [MPVolumeView alloc];
    v4 = [(MPVolumeView *)v3 initWithFrame:1 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    volumeView = v2->_volumeView;
    v2->_volumeView = v4;
  }

  return v2;
}

@end