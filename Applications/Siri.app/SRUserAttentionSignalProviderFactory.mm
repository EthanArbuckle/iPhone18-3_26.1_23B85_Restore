@interface SRUserAttentionSignalProviderFactory
+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)identifier eventMask:(unint64_t)mask samplingInterval:(double)interval attentionLossTimeout:(double)timeout;
- (SRUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events;
- (id)buttonPressAwarenessClient;
- (id)faceAttentionAwarenessClient;
- (id)touchAttentionAwarenessClient;
@end

@implementation SRUserAttentionSignalProviderFactory

- (SRUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events
{
  v9.receiver = self;
  v9.super_class = SRUserAttentionSignalProviderFactory;
  result = [(SRUserAttentionSignalProviderFactory *)&v9 init];
  if (result)
  {
    result->_samplingInterval = interval;
    result->_attentionLossTimeout = timeout;
    result->_supportedAttentionAwarenessEvents = events;
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

+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)identifier eventMask:(unint64_t)mask samplingInterval:(double)interval attentionLossTimeout:(double)timeout
{
  identifierCopy = identifier;
  v10 = objc_alloc_init(AWAttentionAwarenessConfiguration);
  [v10 setIdentifier:identifierCopy];

  [v10 setEventMask:mask];
  [v10 setSamplingInterval:interval];
  [v10 setAttentionLostTimeout:timeout];

  return v10;
}

@end