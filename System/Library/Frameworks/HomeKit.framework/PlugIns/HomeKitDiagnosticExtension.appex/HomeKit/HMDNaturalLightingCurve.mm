@interface HMDNaturalLightingCurve
+ (id)logCategory;
+ (int64_t)colorTemperatureMiredsFromKelvins:(int64_t)kelvins;
- (BOOL)isEqual:(id)equal;
- (HMDNaturalLightingCurve)initWithCoder:(id)coder;
- (HMDNaturalLightingCurve)initWithCurve:(id)curve minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature;
- (HMDNaturalLightingCurve)initWithVersion:(unint64_t)version transitionPoints:(id)points minimumBrightness:(int64_t)brightness maximumBrightness:(int64_t)maximumBrightness minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature;
- (id)attributeDescriptions;
- (id)colorTemperatureForBrightness:(int64_t)brightness millisecondsElapsedSinceStartOfDay:(unint64_t)day;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)transitionPointsWithMillisecondsElapsedSinceStartOfDay:(unint64_t)day;
- (unint64_t)checksum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDNaturalLightingCurve

- (id)transitionPointsWithMillisecondsElapsedSinceStartOfDay:(unint64_t)day
{
  selfCopy = self;
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  minimumBrightness = [(HMDNaturalLightingCurve *)selfCopy minimumBrightness];
  maximumBrightness = [(HMDNaturalLightingCurve *)selfCopy maximumBrightness];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = transitionPoints;
  v9 = [v8 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v9)
  {
    v10 = v9;
    v75 = maximumBrightness;
    v76 = minimumBrightness;
    v11 = 0;
    dayCopy = 0;
    v13 = 0;
    v14 = *v84;
    v79 = selfCopy;
    obj = v8;
LABEL_3:
    v15 = 0;
    v16 = v11;
    v77 = &v10[v11];
    v17 = dayCopy;
    v18 = v13;
    while (1)
    {
      v82 = v18;
      if (*v84 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v83 + 1) + 8 * v15);
      targetCompletionDuration = [v19 targetCompletionDuration];
      value = [targetCompletionDuration value];
      dayCopy = [value unsignedLongLongValue] + v17;

      if (dayCopy == day)
      {
        break;
      }

      v22 = v82;
      if (v17 <= day && dayCopy > day)
      {
        goto LABEL_15;
      }

      v13 = v19;

      ++v16;
      ++v15;
      v17 = dayCopy;
      v18 = v13;
      if (v10 == v15)
      {
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
        v11 = v77;
        selfCopy = v79;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    dayCopy = day;
    v22 = v82;
LABEL_15:
    v23 = v19;
    v8 = obj;

    if (!v23)
    {
      selfCopy = v79;
      goto LABEL_22;
    }

    v24 = &dayCopy[-day];
    if (&dayCopy[-day] >= 0)
    {
      v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count] + 1);
      if (dayCopy == day)
      {
        v26 = [[HAPTLVUnsignedNumberValue alloc] initWithValue:&off_1000337A8];
        v27 = [HAPCharacteristicValueLinearDerivedTransitionPoint alloc];
        scale = [v23 scale];
        offset = [v23 offset];
        v30 = [v27 initWithScale:scale offset:offset targetCompletionDuration:v26 startDelayDuration:0];

        [v25 addObject:v30];
        for (i = v16 + 1; i < [obj count]; ++i)
        {
          v32 = [obj objectAtIndex:i];
          [v25 addObject:v32];
        }

        if (v16)
        {
          for (j = 1; j <= v16; ++j)
          {
            v59 = [obj objectAtIndex:j];
            [v25 addObject:v59];
          }
        }
      }

      else if (v22)
      {
        targetCompletionDuration2 = [v23 targetCompletionDuration];
        [targetCompletionDuration2 value];
        v44 = v43 = v22;
        v45 = ([v44 unsignedLongLongValue] - v24);

        v46 = [HAPTLVUnsignedNumberValue alloc];
        v47 = [NSNumber numberWithLongLong:v24];
        v48 = [v46 initWithValue:v47];

        v49 = v43;
        v50 = v48;
        v80 = v45;
        v51 = [HAPCharacteristicValueLinearDerivedTransitionPoint transitionPointWithPreviousTransitionPoint:v49 nextTransitionPoint:v23 timeElapsedSincePreviousTransitionPoint:v45 minimumBrightness:v76 maximumBrightness:v75];
        [v25 addObject:?];
        v52 = [HAPCharacteristicValueLinearDerivedTransitionPoint alloc];
        scale2 = [v23 scale];
        offset2 = [v23 offset];
        v55 = [v52 initWithScale:scale2 offset:offset2 targetCompletionDuration:v48 startDelayDuration:0];

        v78 = v55;
        [v25 addObject:v55];
        for (k = v16 + 1; k < [obj count]; ++k)
        {
          v57 = [obj objectAtIndex:k];
          [v25 addObject:v57];
        }

        if (v16 >= 2)
        {
          for (m = 1; m != v16; ++m)
          {
            v61 = [obj objectAtIndex:m];
            [v25 addObject:v61];
          }
        }

        v62 = [HAPCharacteristicValueLinearDerivedTransitionPoint alloc];
        v63 = v51;
        scale3 = [v51 scale];
        offset3 = [v51 offset];
        v66 = [HAPTLVUnsignedNumberValue alloc];
        v67 = [NSNumber numberWithUnsignedLongLong:v80];
        v68 = [v66 initWithValue:v67];
        v69 = [v62 initWithScale:scale3 offset:offset3 targetCompletionDuration:v68 startDelayDuration:0];

        [v25 addObject:v69];
        v22 = v82;
      }

      else
      {
        v70 = objc_autoreleasePoolPush();
        v71 = v79;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543618;
          v88 = v73;
          v89 = 2048;
          dayCopy3 = day;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%{public}@Next transition point for current time: %llums not found", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
      }

      v37 = [v25 copy];

      goto LABEL_45;
    }

    v38 = objc_autoreleasePoolPush();
    v39 = v79;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v41;
      v89 = 2048;
      dayCopy3 = &dayCopy[-day];
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@Time to reach next transition point is negative: %lldms", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
  }

  else
  {
    v13 = 0;
LABEL_13:

    v22 = v13;
LABEL_22:
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v36;
      v89 = 2048;
      dayCopy3 = day;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@Next transition point for current time: %llums not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = &__NSArray0__struct;
LABEL_45:

  return v37;
}

- (id)colorTemperatureForBrightness:(int64_t)brightness millisecondsElapsedSinceStartOfDay:(unint64_t)day
{
  v7 = [(HMDNaturalLightingCurve *)self transitionPointsWithMillisecondsElapsedSinceStartOfDay:day];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if ([(HMDNaturalLightingCurve *)self minimumBrightness]> brightness)
  {
    minimumBrightness = [(HMDNaturalLightingCurve *)self minimumBrightness];
LABEL_7:
    brightness = minimumBrightness;
    goto LABEL_8;
  }

  if ([(HMDNaturalLightingCurve *)self maximumBrightness]< brightness)
  {
    minimumBrightness = [(HMDNaturalLightingCurve *)self maximumBrightness];
    goto LABEL_7;
  }

LABEL_8:
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2048;
    dayCopy = day;
    v20 = 2112;
    v21 = firstObject;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Transition point for milliseconds elapsed since start of day %llums is %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject colorTemperatureForBrightness:brightness]);
LABEL_11:

  return v10;
}

- (unint64_t)checksum
{
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v4 = [transitionPoints countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(transitionPoints);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        *data = [v8 colorTemperatureForBrightness:{-[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")}];
        CC_SHA256_Update(&c, data, 4u);
        LODWORD(colorTemperatureNotifyIntervalThresholdInMilliseconds) = [v8 colorTemperatureForBrightness:{-[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")}];
        CC_SHA256_Update(&c, &colorTemperatureNotifyIntervalThresholdInMilliseconds, 4u);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [transitionPoints countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  colorTemperatureNotifyValueChangeThreshold = [(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold];
  CC_SHA256_Update(&c, &colorTemperatureNotifyValueChangeThreshold, 4u);
  colorTemperatureNotifyIntervalThresholdInMilliseconds = [(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds];
  CC_SHA256_Update(&c, &colorTemperatureNotifyIntervalThresholdInMilliseconds, 8u);
  colorTemperatureUpdateIntervalInMilliseconds = [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
  CC_SHA256_Update(&c, &colorTemperatureUpdateIntervalInMilliseconds, 8u);
  CC_SHA256_Final(data, &c);
  return *data;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  v39 = [NSNumber numberWithUnsignedInteger:[(HMDNaturalLightingCurve *)self version]];
  v38 = [v3 initWithName:@"Version" value:v39];
  v40[0] = v38;
  v4 = [HMFAttributeDescription alloc];
  v37 = [NSNumber numberWithInteger:[(HMDNaturalLightingCurve *)self minimumBrightness]];
  v36 = [v4 initWithName:@"Minimum Brightness" value:v37];
  v40[1] = v36;
  v5 = [HMFAttributeDescription alloc];
  v35 = [NSNumber numberWithInteger:[(HMDNaturalLightingCurve *)self maximumBrightness]];
  v34 = [v5 initWithName:@"Maximum Brightness" value:v35];
  v40[2] = v34;
  v6 = [HMFAttributeDescription alloc];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [transitionPoints count]);
  v31 = [v6 initWithName:@"Transition Points Count" value:v32];
  v40[3] = v31;
  v7 = [HMFAttributeDescription alloc];
  transitionPoints2 = [(HMDNaturalLightingCurve *)self transitionPoints];
  firstObject = [transitionPoints2 firstObject];
  v28 = [v7 initWithName:@"Transition Start Point" value:firstObject];
  v40[4] = v28;
  v8 = [HMFAttributeDescription alloc];
  v27 = [NSNumber numberWithInteger:[(HMDNaturalLightingCurve *)self minimumColorTemperature]];
  v26 = [v8 initWithName:@"Minimum Color Temperature" value:v27];
  v40[5] = v26;
  v9 = [HMFAttributeDescription alloc];
  v25 = [NSNumber numberWithInteger:[(HMDNaturalLightingCurve *)self maximumColorTemperature]];
  v10 = [v9 initWithName:@"Maximum Color Temperature" value:v25];
  v40[6] = v10;
  v11 = [HMFAttributeDescription alloc];
  v12 = [NSNumber numberWithUnsignedLongLong:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds]];
  v13 = [v11 initWithName:@"Color Temperature Notify Interval Threshold In Milliseconds" value:v12];
  v40[7] = v13;
  v14 = [HMFAttributeDescription alloc];
  v15 = [NSNumber numberWithUnsignedInteger:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold]];
  v16 = [v14 initWithName:@"Color Temperature Notify Value Change Threshold" value:v15];
  v40[8] = v16;
  v17 = [HMFAttributeDescription alloc];
  v18 = [NSNumber numberWithUnsignedLongLong:[(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds]];
  v19 = [v17 initWithName:@"Color Temperature Update Interval In Milliseconds" value:v18];
  v40[9] = v19;
  v20 = [HMFAttributeDescription alloc];
  v21 = [NSNumber numberWithUnsignedLongLong:[(HMDNaturalLightingCurve *)self checksum]];
  v22 = [v20 initWithName:@"Transition Checksum" value:v21];
  v40[10] = v22;
  v23 = [NSArray arrayWithObjects:v40 count:11];

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableNaturalLightingCurve allocWithZone:zone];
  version = [(HMDNaturalLightingCurve *)self version];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [(HMDNaturalLightingCurve *)v4 initWithVersion:version transitionPoints:transitionPoints minimumBrightness:[(HMDNaturalLightingCurve *)self minimumBrightness] maximumBrightness:[(HMDNaturalLightingCurve *)self maximumBrightness] minimumColorTemperature:[(HMDNaturalLightingCurve *)self minimumColorTemperature] maximumColorTemperature:[(HMDNaturalLightingCurve *)self maximumColorTemperature]];

  [(HMDNaturalLightingCurve *)v7 setColorTemperatureNotifyIntervalThresholdInMilliseconds:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds]];
  [(HMDNaturalLightingCurve *)v7 setColorTemperatureNotifyValueChangeThreshold:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold]];
  [(HMDNaturalLightingCurve *)v7 setColorTemperatureUpdateIntervalInMilliseconds:[(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds]];
  return v7;
}

+ (id)logCategory
{
  if (qword_10003B1C8 != -1)
  {
    dispatch_once(&qword_10003B1C8, &stru_100030AB8);
  }

  v3 = qword_10003B1D0;

  return v3;
}

+ (int64_t)colorTemperatureMiredsFromKelvins:(int64_t)kelvins
{
  if (kelvins)
  {
    return 1000000 / kelvins;
  }

  v4 = _HMFPreconditionFailure();
  return +[(HMDNaturalLightingCurve *)v4];
}

- (unint64_t)hash
{
  version = [(HMDNaturalLightingCurve *)self version];
  v4 = [(HMDNaturalLightingCurve *)self minimumBrightness]^ version;
  v5 = v4 ^ [(HMDNaturalLightingCurve *)self maximumBrightness];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [transitionPoints count];

  v8 = v5 ^ v7 ^ [(HMDNaturalLightingCurve *)self minimumColorTemperature];
  maximumColorTemperature = [(HMDNaturalLightingCurve *)self maximumColorTemperature];
  v10 = maximumColorTemperature ^ [(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds];
  v11 = v10 ^ [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
  return v8 ^ v11 ^ [(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && (v8 = [v6 version], v8 == -[HMDNaturalLightingCurve version](self, "version")) && (v9 = objc_msgSend(v7, "minimumBrightness"), v9 == -[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")) && (v10 = objc_msgSend(v7, "maximumBrightness"), v10 == -[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")))
  {
    transitionPoints = [v7 transitionPoints];
    transitionPoints2 = [(HMDNaturalLightingCurve *)self transitionPoints];
    if ([transitionPoints isEqual:transitionPoints2] && (v13 = objc_msgSend(v7, "minimumColorTemperature"), v13 == -[HMDNaturalLightingCurve minimumColorTemperature](self, "minimumColorTemperature")) && (v14 = objc_msgSend(v7, "maximumColorTemperature"), v14 == -[HMDNaturalLightingCurve maximumColorTemperature](self, "maximumColorTemperature")) && (v15 = objc_msgSend(v7, "colorTemperatureNotifyIntervalThresholdInMilliseconds"), v15 == -[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self, "colorTemperatureNotifyIntervalThresholdInMilliseconds")) && (v16 = objc_msgSend(v7, "colorTemperatureNotifyValueChangeThreshold"), v16 == -[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self, "colorTemperatureNotifyValueChangeThreshold")))
    {
      colorTemperatureUpdateIntervalInMilliseconds = [v7 colorTemperatureUpdateIntervalInMilliseconds];
      v18 = colorTemperatureUpdateIntervalInMilliseconds == [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve version](self forKey:{"version"), @"HNLCurve.vk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve minimumBrightness](self forKey:{"minimumBrightness"), @"HNLCurve.mibk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve maximumBrightness](self forKey:{"maximumBrightness"), @"HNLCurve.mabk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve minimumColorTemperature](self forKey:{"minimumColorTemperature"), @"HNLCurve.mictk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve maximumColorTemperature](self forKey:{"maximumColorTemperature"), @"HNLCurve.mactk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self forKey:{"colorTemperatureNotifyValueChangeThreshold"), @"HNLCurve.ctnvctk"}];
  [coderCopy encodeInt64:-[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self forKey:{"colorTemperatureNotifyIntervalThresholdInMilliseconds"), @"HNLCurve.ctnitk"}];
  [coderCopy encodeInt64:-[HMDNaturalLightingCurve colorTemperatureUpdateIntervalInMilliseconds](self forKey:{"colorTemperatureUpdateIntervalInMilliseconds"), @"HNLCurve.ctuik"}];
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [transitionPoints countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(transitionPoints);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v18 = 0;
        v12 = [v11 serializeWithError:&v18];
        v13 = v18;
        if (!v12)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543874;
            v24 = v17;
            v25 = 2112;
            v26 = v11;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize transition point %@:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_13;
        }

        [v5 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [transitionPoints countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  transitionPoints = [v5 copy];
  [coderCopy encodeObject:transitionPoints forKey:@"HNLCurve.tpk"];
LABEL_13:
}

- (HMDNaturalLightingCurve)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HNLCurve.vk"];
  if (v5 != 1)
  {
    v18 = v5;
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v57 = v19;
    v58 = 2048;
    v59 = v18;
    v60 = 2048;
    v61 = 1;
    v20 = "%{public}@Curve version is not equal to (%ld != %ld)";
    v21 = v13;
    v22 = 32;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);

    goto LABEL_25;
  }

  v6 = [coderCopy decodeIntegerForKey:@"HNLCurve.mabk"];
  if (v6 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v19;
    v58 = 2048;
    v59 = v6;
    v20 = "%{public}@Maximum brightness is less than or equal to 0: %ld";
    v21 = v13;
    v22 = 22;
    goto LABEL_14;
  }

  v7 = [coderCopy decodeIntegerForKey:@"HNLCurve.mibk"];
  v8 = v7;
  if (v7 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v14;
    v58 = 2048;
    v59 = v8;
    v15 = "%{public}@Minimum brightness is less than or equal to 0: %ld";
LABEL_23:
    v16 = v13;
    v17 = 22;
    goto LABEL_24;
  }

  if (v7 >= v6)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v57 = v23;
      v58 = 2048;
      v59 = v8;
      v60 = 2048;
      v61 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Minimum brightness is greater than equal to maximum brightness (%ld:%ld)", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v9 = [coderCopy decodeIntegerForKey:@"HNLCurve.mictk"];
  if (v9 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v14;
    v58 = 2048;
    v59 = v9;
    v15 = "%{public}@Minimum color temperature is less than or equal to 0: %ld";
    goto LABEL_23;
  }

  v10 = [coderCopy decodeIntegerForKey:@"HNLCurve.mactk"];
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v14;
    v58 = 2048;
    v59 = 0;
    v15 = "%{public}@Maximum color temperature is less than or equal to 0: %ld";
    goto LABEL_23;
  }

  v11 = v10;
  if (v9 > v10)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v57 = v14;
      v58 = 2048;
      v59 = v9;
      v60 = 2048;
      v61 = v11;
      v15 = "%{public}@Minimum color temperature is greater than maximum color temperature (%ld:%ld)";
      v16 = v13;
      v17 = 32;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_25:

    objc_autoreleasePoolPop(v12);
    selfCopy = 0;
    goto LABEL_26;
  }

  v44 = v10;
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v26 = [NSArray arrayWithObjects:v55 count:2];
  v27 = [NSSet setWithArray:v26];

  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"HNLCurve.tpk"];
  if (v28)
  {
    v43 = v9;
    v46 = v27;
    v48 = +[NSMutableArray array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v45 = v28;
    obj = v28;
    v29 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v50 + 1) + 8 * i);
          v49 = 0;
          v34 = [HAPCharacteristicValueLinearDerivedTransitionPoint parsedFromData:v33 error:&v49];
          v35 = v49;
          if (!v34)
          {
            v37 = objc_autoreleasePoolPush();
            self = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543874;
              v57 = v39;
              v58 = 2112;
              v59 = v33;
              v60 = 2112;
              v61 = v35;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse encoded transition point %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v37);
            selfCopy = 0;
            v28 = v45;
            v27 = v46;
            v36 = v48;
            goto LABEL_46;
          }

          [v48 addObject:v34];
        }

        v30 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v36 = v48;
    if ([v48 count])
    {
      self = [(HMDNaturalLightingCurve *)self initWithVersion:1 transitionPoints:v48 minimumBrightness:v8 maximumBrightness:v6 minimumColorTemperature:v43 maximumColorTemperature:v44];
      -[HMDNaturalLightingCurve setColorTemperatureNotifyValueChangeThreshold:](self, "setColorTemperatureNotifyValueChangeThreshold:", [coderCopy decodeIntegerForKey:@"HNLCurve.ctnvctk"]);
      -[HMDNaturalLightingCurve setColorTemperatureNotifyIntervalThresholdInMilliseconds:](self, "setColorTemperatureNotifyIntervalThresholdInMilliseconds:", [coderCopy decodeInt64ForKey:@"HNLCurve.ctnitk"]);
      -[HMDNaturalLightingCurve setColorTemperatureUpdateIntervalInMilliseconds:](self, "setColorTemperatureUpdateIntervalInMilliseconds:", [coderCopy decodeInt64ForKey:@"HNLCurve.ctuik"]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v28 = v45;
    v27 = v46;
LABEL_46:
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    self = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode transition points", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    selfCopy = 0;
  }

LABEL_26:
  return selfCopy;
}

- (HMDNaturalLightingCurve)initWithCurve:(id)curve minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature
{
  curveCopy = curve;
  transitionPoints = [curveCopy transitionPoints];
  v41 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [transitionPoints count]);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [curveCopy transitionPoints];
  v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  v9 = 0;
  v10 = 0;
  if (v42)
  {
    v40 = *v44;
    colorTemperatureCopy = colorTemperature;
    v37 = curveCopy;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = [v12 colorTemperatureForBrightness:{objc_msgSend(curveCopy, "minimumBrightness")}];
        v14 = v13;
        if (v13 <= temperature)
        {
          temperatureCopy = temperature;
        }

        else
        {
          temperatureCopy = v13;
        }

        if (v13 <= colorTemperature)
        {
          colorTemperatureCopy2 = temperatureCopy;
        }

        else
        {
          colorTemperatureCopy2 = colorTemperature;
        }

        v17 = [v12 colorTemperatureForBrightness:{objc_msgSend(curveCopy, "maximumBrightness")}];
        if (v17 <= temperature)
        {
          temperatureCopy2 = temperature;
        }

        else
        {
          temperatureCopy2 = v17;
        }

        if (v17 <= colorTemperature)
        {
          colorTemperatureCopy3 = temperatureCopy2;
        }

        else
        {
          colorTemperatureCopy3 = colorTemperature;
        }

        if (v17 > colorTemperature || v17 < temperature || v14 > colorTemperature || v14 < temperature)
        {
          minimumBrightness = [curveCopy minimumBrightness];
          maximumBrightness = [curveCopy maximumBrightness];
          targetCompletionDuration = [v12 targetCompletionDuration];
          value = [targetCompletionDuration value];
          unsignedLongLongValue = [value unsignedLongLongValue];
          v27 = maximumBrightness;
          colorTemperature = colorTemperatureCopy;
          v28 = [HAPCharacteristicValueLinearDerivedTransitionPoint transitionPointWithMinimumBrightness:minimumBrightness minimumBrightnessColorTemperature:colorTemperatureCopy2 maximumBrightness:v27 maximumBrightnessColorTemperature:colorTemperatureCopy3 targetCompletionDuration:unsignedLongLongValue];

          curveCopy = v37;
        }

        else
        {
          v28 = [v12 copy];
        }

        [v41 addObject:v28];
        if (colorTemperatureCopy2 >= colorTemperatureCopy3)
        {
          v29 = colorTemperatureCopy3;
        }

        else
        {
          v29 = colorTemperatureCopy2;
        }

        if (v10 >= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v10;
        }

        if (v10 <= 0)
        {
          v10 = v29;
        }

        else
        {
          v10 = v30;
        }

        if (colorTemperatureCopy3 <= colorTemperatureCopy2)
        {
          v31 = colorTemperatureCopy2;
        }

        else
        {
          v31 = colorTemperatureCopy3;
        }

        if (v9 <= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v9;
        }

        if (v9 <= 0)
        {
          v9 = v31;
        }

        else
        {
          v9 = v32;
        }

        v11 = v11 + 1;
      }

      while (v42 != v11);
      v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v42);
  }

  v33 = -[HMDNaturalLightingCurve initWithVersion:transitionPoints:minimumBrightness:maximumBrightness:minimumColorTemperature:maximumColorTemperature:](self, "initWithVersion:transitionPoints:minimumBrightness:maximumBrightness:minimumColorTemperature:maximumColorTemperature:", [curveCopy version], v41, objc_msgSend(curveCopy, "minimumBrightness"), objc_msgSend(curveCopy, "maximumBrightness"), v10, v9);
  -[HMDNaturalLightingCurve setColorTemperatureNotifyIntervalThresholdInMilliseconds:](v33, "setColorTemperatureNotifyIntervalThresholdInMilliseconds:", [curveCopy colorTemperatureNotifyIntervalThresholdInMilliseconds]);
  -[HMDNaturalLightingCurve setColorTemperatureNotifyValueChangeThreshold:](v33, "setColorTemperatureNotifyValueChangeThreshold:", [curveCopy colorTemperatureNotifyValueChangeThreshold]);
  -[HMDNaturalLightingCurve setColorTemperatureUpdateIntervalInMilliseconds:](v33, "setColorTemperatureUpdateIntervalInMilliseconds:", [curveCopy colorTemperatureUpdateIntervalInMilliseconds]);

  return v33;
}

- (HMDNaturalLightingCurve)initWithVersion:(unint64_t)version transitionPoints:(id)points minimumBrightness:(int64_t)brightness maximumBrightness:(int64_t)maximumBrightness minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature
{
  pointsCopy = points;
  v20.receiver = self;
  v20.super_class = HMDNaturalLightingCurve;
  v15 = [(HMDNaturalLightingCurve *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_version = version;
    v17 = [pointsCopy copy];
    transitionPoints = v16->_transitionPoints;
    v16->_transitionPoints = v17;

    v16->_minimumBrightness = brightness;
    v16->_maximumBrightness = maximumBrightness;
    v16->_minimumColorTemperature = temperature;
    v16->_maximumColorTemperature = colorTemperature;
  }

  return v16;
}

@end