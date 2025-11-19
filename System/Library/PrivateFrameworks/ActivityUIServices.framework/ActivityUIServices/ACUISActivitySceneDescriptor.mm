@interface ACUISActivitySceneDescriptor
- (ACUISActivitySceneDescriptor)initWithActivityDescriptor:(id)a3 payloadIdentifier:(id)a4 activitySceneType:(int64_t)a5 metricsRequest:(id)a6;
- (ACUISActivitySceneDescriptor)initWithActivitySceneDescriptor:(id)a3 acActivityDescriptor:(id)a4;
- (ACUISActivitySceneMetrics)metrics;
- (id)_activitySceneDescriptor;
@end

@implementation ACUISActivitySceneDescriptor

- (ACUISActivitySceneDescriptor)initWithActivitySceneDescriptor:(id)a3 acActivityDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ACUISActivitySceneDescriptor;
  v8 = [(ACUISActivitySceneDescriptor *)&v20 init];
  if (v8)
  {
    v9 = [v6 activityDescriptorData];
    activityDescriptorData = v8->_activityDescriptorData;
    v8->_activityDescriptorData = v9;

    v11 = [v6 activitySceneType];
    if (v11 > 5)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_18E6634D8[v11];
    }

    v8->_activitySceneType = v12;
    objc_storeStrong(&v8->_activityDescriptor, a4);
    v13 = [ACUISActivityMetricsRequest alloc];
    v14 = [v6 metricsRequest];
    v15 = [(ACUISActivityMetricsRequest *)v13 _initWithMetricsRequest:v14];
    metricsRequest = v8->_metricsRequest;
    v8->_metricsRequest = v15;

    v17 = [v6 payloadID];
    payloadIdentifier = v8->_payloadIdentifier;
    v8->_payloadIdentifier = v17;
  }

  return v8;
}

- (ACUISActivitySceneDescriptor)initWithActivityDescriptor:(id)a3 payloadIdentifier:(id)a4 activitySceneType:(int64_t)a5 metricsRequest:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = ACUISActivitySceneDescriptor;
  v12 = [(ACUISActivitySceneDescriptor *)&v18 init];
  if (v12)
  {
    v13 = [v10 descriptorData];
    activityDescriptorData = v12->_activityDescriptorData;
    v12->_activityDescriptorData = v13;

    v12->_activitySceneType = a5;
    objc_storeStrong(&v12->_activityDescriptor, a3);
    objc_storeStrong(&v12->_metricsRequest, a6);
    v15 = [(NSString *)v12->_payloadIdentifier copy];
    payloadIdentifier = v12->_payloadIdentifier;
    v12->_payloadIdentifier = v15;
  }

  return v12;
}

- (ACUISActivitySceneMetrics)metrics
{
  v2 = [(ACUISActivitySceneDescriptor *)self useFallbackMetrics];
  v3 = [ACUISActivitySceneMetrics alloc];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (v2)
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
  v7 = [(ACUISActivityMetricsRequest *)self->_metricsRequest _activityMetricsRequest];
  v8 = [(ActivitySceneDescriptor *)v3 initWithActivitySceneType:v5 activityDescriptor:activityDescriptorData metricsRequest:v7 payloadID:self->_payloadIdentifier];

  return v8;
}

@end