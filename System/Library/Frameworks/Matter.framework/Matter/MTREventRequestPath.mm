@interface MTREventRequestPath
+ (MTREventRequestPath)requestPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventRequestPath:(id)path;
- (MTREventRequestPath)initWithCoder:(id)coder;
- (MTREventRequestPath)initWithEndpointID:(id)d clusterID:(id)iD eventID:(id)eventID;
- (id)description;
- (unint64_t)hash;
- (void)convertToEventPathParams:(EventPathParams *)params;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTREventRequestPath

- (MTREventRequestPath)initWithEndpointID:(id)d clusterID:(id)iD eventID:(id)eventID
{
  dCopy = d;
  iDCopy = iD;
  eventIDCopy = eventID;
  v11 = [dCopy copy];
  endpoint = self->_endpoint;
  self->_endpoint = v11;

  v13 = [iDCopy copy];
  cluster = self->_cluster;
  self->_cluster = v13;

  v15 = [eventIDCopy copy];
  event = self->_event;
  self->_event = v15;

  return self;
}

- (id)description
{
  v3 = sub_238EEEF30(self->_endpoint);
  v4 = sub_238EEEFC0(self->_cluster);
  v5 = sub_238EEF098(self->_cluster, self->_event, &unk_284BA9AA0);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<MTREventRequestPath endpoint %@ cluster %@ event %@>", v3, v4, v5];

  return v6;
}

+ (MTREventRequestPath)requestPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = eventID;
  v10 = [[MTREventRequestPath alloc] initWithEndpointID:v7 clusterID:v8 eventID:v9];

  return v10;
}

- (BOOL)isEqualToEventRequestPath:(id)path
{
  pathCopy = path;
  endpoint = self->_endpoint;
  endpoint = [pathCopy endpoint];
  if (sub_238DB32F8(endpoint, endpoint))
  {
    cluster = self->_cluster;
    cluster = [pathCopy cluster];
    if (sub_238DB32F8(cluster, cluster))
    {
      event = self->_event;
      event = [pathCopy event];
      v11 = sub_238DB32F8(event, event);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTREventRequestPath *)self isEqualToEventRequestPath:equalCopy];

  return v6;
}

- (unint64_t)hash
{
  unsignedShortValue = [(NSNumber *)self->_endpoint unsignedShortValue];
  unsignedLongValue = [(NSNumber *)self->_cluster unsignedLongValue];
  return unsignedLongValue ^ [(NSNumber *)self->_event unsignedLongValue]^ unsignedShortValue;
}

- (void)convertToEventPathParams:(EventPathParams *)params
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    unsignedShortValue = [(NSNumber *)endpoint unsignedShortValue];
  }

  else
  {
    unsignedShortValue = -1;
  }

  params->var2 = unsignedShortValue;
  cluster = self->_cluster;
  if (cluster)
  {
    unsignedLongValue = [(NSNumber *)cluster unsignedLongValue];
  }

  else
  {
    unsignedLongValue = -1;
  }

  params->var0 = unsignedLongValue;
  event = self->_event;
  if (event)
  {
    unsignedLongValue2 = [(NSNumber *)event unsignedLongValue];
  }

  else
  {
    unsignedLongValue2 = -1;
  }

  params->var1 = unsignedLongValue2;
}

- (MTREventRequestPath)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MTREventRequestPath;
  v5 = [(MTREventRequestPath *)&v23 init];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointIDKey"];
  p_endpoint = &v5->_endpoint;
  endpoint = v5->_endpoint;
  v5->_endpoint = v6;

  if (v5->_endpoint)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *p_endpoint;
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTREventRequestPath decoded %@ for endpoint, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

LABEL_20:
      v22 = *p_endpoint;
      sub_2393D5320(0, 1);
LABEL_21:
      v13 = 0;
      goto LABEL_22;
    }
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterIDKey"];
  p_endpoint = &v5->_cluster;
  cluster = v5->_cluster;
  v5->_cluster = v9;

  if (v5->_cluster)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *p_endpoint;
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "MTREventRequestPath decoded %@ for cluster, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributeIDKey"];
  p_endpoint = &v5->_event;
  event = v5->_event;
  v5->_event = v11;

  if (v5->_event)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *p_endpoint;
        *buf = 138412290;
        v25 = v19;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTREventRequestPath decoded %@ for event, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v13 = v5;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endpoint = self->_endpoint;
  if (endpoint)
  {
    [coderCopy encodeObject:endpoint forKey:@"endpointIDKey"];
  }

  cluster = self->_cluster;
  if (cluster)
  {
    [coderCopy encodeObject:cluster forKey:@"clusterIDKey"];
  }

  event = self->_event;
  if (event)
  {
    [coderCopy encodeObject:event forKey:@"attributeIDKey"];
  }
}

@end