@interface ACUISActivitySceneDescriptor
- (ACUISActivitySceneDescriptor)initWithActivityDescriptor:(id)descriptor payloadIdentifier:(id)identifier activitySceneType:(int64_t)type metricsRequest:(id)request;
- (ACUISActivitySceneDescriptor)initWithActivitySceneDescriptor:(id)descriptor acActivityDescriptor:(id)activityDescriptor;
- (ACUISActivitySceneMetrics)metrics;
- (id)_activitySceneDescriptor;
@end

@implementation ACUISActivitySceneDescriptor

- (ACUISActivitySceneDescriptor)initWithActivitySceneDescriptor:(id)descriptor acActivityDescriptor:(id)activityDescriptor
{
  descriptorCopy = descriptor;
  activityDescriptorCopy = activityDescriptor;
  v20.receiver = self;
  v20.super_class = ACUISActivitySceneDescriptor;
  v8 = [(ACUISActivitySceneDescriptor *)&v20 init];
  if (v8)
  {
    activityDescriptorData = [descriptorCopy activityDescriptorData];
    activityDescriptorData = v8->_activityDescriptorData;
    v8->_activityDescriptorData = activityDescriptorData;

    activitySceneType = [descriptorCopy activitySceneType];
    if (activitySceneType > 5)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_18E6634D8[activitySceneType];
    }

    v8->_activitySceneType = v12;
    objc_storeStrong(&v8->_activityDescriptor, activityDescriptor);
    v13 = [ACUISActivityMetricsRequest alloc];
    metricsRequest = [descriptorCopy metricsRequest];
    v15 = [(ACUISActivityMetricsRequest *)v13 _initWithMetricsRequest:metricsRequest];
    metricsRequest = v8->_metricsRequest;
    v8->_metricsRequest = v15;

    payloadID = [descriptorCopy payloadID];
    payloadIdentifier = v8->_payloadIdentifier;
    v8->_payloadIdentifier = payloadID;
  }

  return v8;
}

- (ACUISActivitySceneDescriptor)initWithActivityDescriptor:(id)descriptor payloadIdentifier:(id)identifier activitySceneType:(int64_t)type metricsRequest:(id)request
{
  descriptorCopy = descriptor;
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = ACUISActivitySceneDescriptor;
  v12 = [(ACUISActivitySceneDescriptor *)&v18 init];
  if (v12)
  {
    descriptorData = [descriptorCopy descriptorData];
    activityDescriptorData = v12->_activityDescriptorData;
    v12->_activityDescriptorData = descriptorData;

    v12->_activitySceneType = type;
    objc_storeStrong(&v12->_activityDescriptor, descriptor);
    objc_storeStrong(&v12->_metricsRequest, request);
    v15 = [(NSString *)v12->_payloadIdentifier copy];
    payloadIdentifier = v12->_payloadIdentifier;
    v12->_payloadIdentifier = v15;
  }

  return v12;
}

- (ACUISActivitySceneMetrics)metrics
{
  useFallbackMetrics = [(ACUISActivitySceneDescriptor *)self useFallbackMetrics];
  v3 = [ACUISActivitySceneMetrics alloc];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (useFallbackMetrics)
  {
    v4 = 370.0;
    v5 = 200.0;
  }

  v6 = [(ACUISActivitySceneMetrics *)v3 initWithSize:v4 cornerRadius:v5, 12.0];

  return v6;
}

- (id)_activitySceneDescriptor
{
  v3 = [_TtC18ActivityUIServices23ActivitySceneDescriptor alloc];
  activitySceneType = self->_activitySceneType;
  if (activitySceneType > 8)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_18E663508[activitySceneType];
  }

  activityDescriptorData = self->_activityDescriptorData;
  _activityMetricsRequest = [(ACUISActivityMetricsRequest *)self->_metricsRequest _activityMetricsRequest];
  v8 = [(ActivitySceneDescriptor *)v3 initWithActivitySceneType:v5 activityDescriptor:activityDescriptorData metricsRequest:_activityMetricsRequest payloadID:self->_payloadIdentifier];

  return v8;
}

@end