@interface CBSensorActivityAttribution
- (BOOL)isEqual:(id)equal;
- (CBSensorActivityAttribution)initWithDataAccessAttribution:(id)attribution;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation CBSensorActivityAttribution

- (CBSensorActivityAttribution)initWithDataAccessAttribution:(id)attribution
{
  attributionCopy = attribution;
  dataAccessType = [attributionCopy dataAccessType];
  if (dataAccessType == 2)
  {
    locationAttribution = [attributionCopy locationAttribution];
    activityAttribution = [locationAttribution activityAttribution];

    v7 = 2;
  }

  else if (dataAccessType == 1)
  {
    cameraCaptureAttribution = [attributionCopy cameraCaptureAttribution];
    activityAttribution = [cameraCaptureAttribution activityAttribution];

    v7 = 0;
  }

  else if (dataAccessType)
  {
    v7 = 0;
    activityAttribution = 0;
  }

  else
  {
    activityAttribution = [attributionCopy audioRecordingActivityAttribution];
    v7 = 1;
  }

  v13.receiver = self;
  v13.super_class = CBSensorActivityAttribution;
  v10 = [(CBActivityAttribution *)&v13 initWithSTActivityAttribution:activityAttribution];
  v11 = v10;
  if (v10)
  {
    v10->_sensor = v7;
    v10->_usedRecently = [attributionCopy isRecent];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [BSEqualsBuilder builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  sensor = [(CBSensorActivityAttribution *)self sensor];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AC60;
  v12[3] = &unk_10007D860;
  v7 = equalCopy;
  v13 = v7;
  v8 = [v5 appendInteger:sensor counterpart:v12];
  if ([v5 isEqual])
  {
    v11.receiver = self;
    v11.super_class = CBSensorActivityAttribution;
    v9 = [(CBActivityAttribution *)&v11 isEqual:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AD30;
  v8[3] = &unk_10007D888;
  v8[4] = self;
  v4 = [v3 appendHashingBlocks:{v8, 0}];
  v5 = [v3 appendInteger:{-[CBSensorActivityAttribution sensor](self, "sensor")}];
  v6 = [v3 hash];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CBSensorActivityAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = CBSensorActivityAttribution;
  succinctDescriptionBuilder = [(CBActivityAttribution *)&v7 succinctDescriptionBuilder];
  v4 = sub_10000AA04([(CBSensorActivityAttribution *)self sensor]);
  v5 = [succinctDescriptionBuilder appendObject:v4 withName:@"sensor"];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CBSensorActivityAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = CBSensorActivityAttribution;
  prefixCopy = prefix;
  [(CBActivityAttribution *)&v11 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AF74;
  v5 = v8[3] = &unk_10007D640;
  v9 = v5;
  selfCopy = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];

  v6 = v5;
  return v5;
}

@end