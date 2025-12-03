@interface ARFrame
- (float)indoorConfidence;
- (float)outdoorConfidence;
- (id)_observationWithIdentifier:(id)identifier;
- (id)_observations;
@end

@implementation ARFrame

- (id)_observations
{
  v3 = objc_getAssociatedObject(self, off_10193AC60);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = objc_alloc_init(VNClassifyImageRequest);
    v16 = 0;
    v6 = [v5 setRevision:3737841665 error:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:-[ARFrame capturedImage](self orientation:"capturedImage") options:{1, &__NSDictionary0__struct}];
      v21 = v5;
      v9 = [NSArray arrayWithObjects:&v21 count:1];
      v15 = v7;
      v10 = [v8 performRequests:v9 error:&v15];
      v11 = v15;

      if (v10)
      {
        results = [v5 results];
        v13 = sub_100F2CAEC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349314;
          selfCopy3 = self;
          v19 = 2112;
          v20 = results;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}p] Got observation results: %@", buf, 0x16u);
        }
      }

      else
      {
        v13 = sub_100F2CAEC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349314;
          selfCopy3 = self;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}p] Error performing observation request: %@", buf, 0x16u);
        }

        results = &__NSArray0__struct;
      }
    }

    else
    {
      v8 = sub_100F2CAEC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        selfCopy3 = self;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Error setting private revision: %@", buf, 0x16u);
      }

      results = &__NSArray0__struct;
      v11 = v7;
    }

    objc_setAssociatedObject(self, off_10193AC60, results, 0x303);
    v4 = results;
  }

  return v4;
}

- (id)_observationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _observations = [(ARFrame *)self _observations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F2CC54;
  v9[3] = &unk_10165D438;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = sub_100030774(_observations, v9);

  return v7;
}

- (float)outdoorConfidence
{
  v3 = [(ARFrame *)self _observationWithIdentifier:@"outdoor"];
  v4 = v3;
  if (v3)
  {
    [v3 confidence];
    v6 = v5;
    v7 = sub_100F2CAEC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134349312;
      selfCopy2 = self;
      v15 = 2048;
      v16 = v6;
      v8 = "[%{public}p] Got outdoor confidence: %f";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, v11);
    }
  }

  else
  {
    v7 = sub_100F2CAEC();
    v6 = -1.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 134349056;
      selfCopy2 = self;
      v8 = "[%{public}p] Could not find outdoor observation";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_6;
    }
  }

  return v6;
}

- (float)indoorConfidence
{
  v3 = [(ARFrame *)self _observationWithIdentifier:@"indoor"];
  v4 = v3;
  if (v3)
  {
    [v3 confidence];
    v6 = v5;
    v7 = sub_100F2CAEC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134349312;
      selfCopy2 = self;
      v15 = 2048;
      v16 = v6;
      v8 = "[%{public}p] Got indoor confidence: %f";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, v11);
    }
  }

  else
  {
    v7 = sub_100F2CAEC();
    v6 = -1.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 134349056;
      selfCopy2 = self;
      v8 = "[%{public}p] Could not find indoor observation";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_6;
    }
  }

  return v6;
}

@end