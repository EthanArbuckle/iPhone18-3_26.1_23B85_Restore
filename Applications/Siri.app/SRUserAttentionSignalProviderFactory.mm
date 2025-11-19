@interface SRUserAttentionSignalProviderFactory
+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)a3 eventMask:(unint64_t)a4 samplingInterval:(double)a5 attentionLossTimeout:(double)a6;
- (SRUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)a3 attentionLossTimeout:(double)a4 supportedAttentionAwarenessEvents:(unint64_t)a5;
- (id)buttonPressAwarenessClient;
- (id)faceAttentionAwarenessClient;
- (id)touchAttentionAwarenessClient;
@end

@implementation SRUserAttentionSignalProviderFactory

- (SRUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)a3 attentionLossTimeout:(double)a4 supportedAttentionAwarenessEvents:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = SRUserAttentionSignalProviderFactory;
  result = [(SRUserAttentionSignalProviderFactory *)&v9 init];
  if (result)
  {
    result->_samplingInterval = a3;
    result->_attentionLossTimeout = a4;
    result->_supportedAttentionAwarenessEvents = a5;
  }

  return result;
}

- (id)faceAttentionAwarenessClient
{
  v3 = objc_alloc_init(AWAttentionAwarenessClient);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.siri.AttentionAwareness.Face" eventMask:-[SRUserAttentionSignalProviderFactory _faceAttentionAwarenessEventMask](self samplingInterval:"_faceAttentionAwarenessEventMask") attentionLossTimeout:{self->_samplingInterval, self->_attentionLossTimeout}];
  [v3 setConfiguration:v4 shouldReset:1];

  return v3;
}

- (id)touchAttentionAwarenessClient
{
  v3 = objc_alloc_init(AWAttentionAwarenessClient);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.siri.AttentionAwareness.Touch" eventMask:-[SRUserAttentionSignalProviderFactory _touchAttentionAwarenessEventMask](self samplingInterval:"_touchAttentionAwarenessEventMask") attentionLossTimeout:{0.1, 0.1}];
  [v3 setConfiguration:v4 shouldReset:1];

  return v3;
}

- (id)buttonPressAwarenessClient
{
  v3 = objc_alloc_init(AWAttentionAwarenessClient);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.siri.AttentionAwareness.ButtonPress" eventMask:-[SRUserAttentionSignalProviderFactory _buttonPressAwarenessClientEventMask](self samplingInterval:"_buttonPressAwarenessClientEventMask") attentionLossTimeout:{0.1, 0.1}];
  [v3 setConfiguration:v4 shouldReset:1];

  return v3;
}

+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)a3 eventMask:(unint64_t)a4 samplingInterval:(double)a5 attentionLossTimeout:(double)a6
{
  v9 = a3;
  v10 = objc_alloc_init(AWAttentionAwarenessConfiguration);
  [v10 setIdentifier:v9];

  [v10 setEventMask:a4];
  [v10 setSamplingInterval:a5];
  [v10 setAttentionLostTimeout:a6];

  return v10;
}

@end