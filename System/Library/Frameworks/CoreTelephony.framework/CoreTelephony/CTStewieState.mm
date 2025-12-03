@interface CTStewieState
- (BOOL)displayInactiveSOSInStatusBar;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToState:(id)state;
- (BOOL)isStewieActiveOverBB;
- (BOOL)isStewieActiveOverInternet;
- (CTStewieState)init;
- (CTStewieState)initWithCoder:(id)coder;
- (CTStewieState)initWithStewieState:(const StewieState *)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)statusReasonForService:(int64_t)service;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieState

- (CTStewieState)init
{
  v6.receiver = self;
  v6.super_class = CTStewieState;
  v2 = [(CTStewieState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_displaySatelliteIcon = 0;
    *&v2->_allowedServices = 0u;
    *&v2->_status = 0u;
    *&v2->_transportType = 0u;
    *&v2->_subscribedServices = 0u;
    *&v2->_dataPathAssertedServices = 0u;
    *&v2->_offGridCriteriaSatisfiedServices = 0u;
    v2->_baseReason = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)isStewieActiveOverBB
{
  isStewieActive = [(CTStewieState *)self isStewieActive];
  if (isStewieActive)
  {
    LOBYTE(isStewieActive) = [(CTStewieState *)self transportType]== 1;
  }

  return isStewieActive;
}

- (CTStewieState)initWithStewieState:(const StewieState *)state
{
  v13.receiver = self;
  v13.super_class = CTStewieState;
  v4 = [(CTStewieState *)&v13 init];
  v5 = v4;
  if (v4)
  {
    [(CTStewieState *)v4 setAllowedServices:state->var0];
    [(CTStewieState *)v5 setActiveServices:state->var1];
    [(CTStewieState *)v5 setSubscriptionDeterminedServices:state->var2];
    [(CTStewieState *)v5 setSubscribedServices:state->var3];
    [(CTStewieState *)v5 setCongestedServices:state->var4];
    [(CTStewieState *)v5 setDataPathAssertedServices:state->var5];
    [(CTStewieState *)v5 setDemoAllowedServices:state->var6];
    [(CTStewieState *)v5 setOffGridCriteriaSatisfiedServices:state->var7];
    [(CTStewieState *)v5 setConfiguredForLocationServices:state->var8];
    if ((state->var9 - 1) > 3u)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18304DE70[(state->var9 - 1)];
    }

    [(CTStewieState *)v5 setStatus:v6];
    if (state->var10 - 1 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_18304DE90[(state->var10 - 1)];
    }

    [(CTStewieState *)v5 setReason:v7];
    if (state->var10 - 1 < 7)
    {
      v8 = (state->var10 - 1) + 1;
    }

    else
    {
      v8 = 0;
    }

    [(CTStewieState *)v5 setBaseReason:v8];
    var11 = state->var11;
    if (var11 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = var11 == 1;
    }

    [(CTStewieState *)v5 setTransportType:v10];
    [(CTStewieState *)v5 setDisplaySatelliteIcon:state->var12];
    v11 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", allowedServices=%ld", -[CTStewieState allowedServices](self, "allowedServices")];
  [v3 appendFormat:@", activeServices=%ld", -[CTStewieState activeServices](self, "activeServices")];
  [v3 appendFormat:@", subscriptionDeterminedServices=%ld", -[CTStewieState subscriptionDeterminedServices](self, "subscriptionDeterminedServices")];
  [v3 appendFormat:@", subscribedServices=%ld", -[CTStewieState subscribedServices](self, "subscribedServices")];
  [v3 appendFormat:@", congestedServices=%ld", -[CTStewieState congestedServices](self, "congestedServices")];
  [v3 appendFormat:@", dataPathAssertedServices=%ld", -[CTStewieState dataPathAssertedServices](self, "dataPathAssertedServices")];
  [v3 appendFormat:@", demoAllowedServices=%ld", -[CTStewieState demoAllowedServices](self, "demoAllowedServices")];
  [v3 appendFormat:@", offGridCriteriaSatisfiedServices=%ld", -[CTStewieState offGridCriteriaSatisfiedServices](self, "offGridCriteriaSatisfiedServices")];
  [v3 appendFormat:@", configuredForLocationServices=%ld", -[CTStewieState configuredForLocationServices](self, "configuredForLocationServices")];
  [v3 appendFormat:@", status=%s", CTStewieStatusAsString(-[CTStewieState status](self, "status"))];
  [v3 appendFormat:@", reason=%s", CTStewieStatusReasonAsString(-[CTStewieState reason](self, "reason"))];
  [v3 appendFormat:@", baseReason=%s", CTStewieServiceStatusReasonAsString(-[CTStewieState baseReason](self, "baseReason"))];
  transportType = [(CTStewieState *)self transportType];
  if (transportType > 2)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_1E6A46818[transportType];
  }

  [v3 appendFormat:@", transportType=%s", v5];
  displaySatelliteIcon = [(CTStewieState *)self displaySatelliteIcon];
  v7 = "no";
  if (displaySatelliteIcon)
  {
    v7 = "yes";
  }

  [v3 appendFormat:@", displaySatelliteIcon=%s", v7];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToState:(id)state
{
  stateCopy = state;
  allowedServices = [(CTStewieState *)self allowedServices];
  if (allowedServices != [stateCopy allowedServices])
  {
    goto LABEL_15;
  }

  activeServices = [(CTStewieState *)self activeServices];
  if (activeServices != [stateCopy activeServices])
  {
    goto LABEL_15;
  }

  subscriptionDeterminedServices = [(CTStewieState *)self subscriptionDeterminedServices];
  if (subscriptionDeterminedServices != [stateCopy subscriptionDeterminedServices])
  {
    goto LABEL_15;
  }

  subscribedServices = [(CTStewieState *)self subscribedServices];
  if (subscribedServices != [stateCopy subscribedServices])
  {
    goto LABEL_15;
  }

  congestedServices = [(CTStewieState *)self congestedServices];
  if (congestedServices != [stateCopy congestedServices])
  {
    goto LABEL_15;
  }

  dataPathAssertedServices = [(CTStewieState *)self dataPathAssertedServices];
  if (dataPathAssertedServices != [stateCopy dataPathAssertedServices])
  {
    goto LABEL_15;
  }

  demoAllowedServices = [(CTStewieState *)self demoAllowedServices];
  if (demoAllowedServices == [stateCopy demoAllowedServices] && (v12 = -[CTStewieState offGridCriteriaSatisfiedServices](self, "offGridCriteriaSatisfiedServices"), v12 == objc_msgSend(stateCopy, "offGridCriteriaSatisfiedServices")) && (v13 = -[CTStewieState configuredForLocationServices](self, "configuredForLocationServices"), v13 == objc_msgSend(stateCopy, "configuredForLocationServices")) && (v14 = -[CTStewieState status](self, "status"), v14 == objc_msgSend(stateCopy, "status")) && (v15 = -[CTStewieState reason](self, "reason"), v15 == objc_msgSend(stateCopy, "reason")) && (v16 = -[CTStewieState baseReason](self, "baseReason"), v16 == objc_msgSend(stateCopy, "baseReason")) && (v17 = -[CTStewieState transportType](self, "transportType"), v17 == objc_msgSend(stateCopy, "transportType")))
  {
    displaySatelliteIcon = [(CTStewieState *)self displaySatelliteIcon];
    v19 = displaySatelliteIcon ^ [stateCopy displaySatelliteIcon] ^ 1;
  }

  else
  {
LABEL_15:
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieState *)self isEqualToState:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAllowedServices:{-[CTStewieState allowedServices](self, "allowedServices")}];
  [v4 setActiveServices:{-[CTStewieState activeServices](self, "activeServices")}];
  [v4 setSubscriptionDeterminedServices:{-[CTStewieState subscriptionDeterminedServices](self, "subscriptionDeterminedServices")}];
  [v4 setSubscribedServices:{-[CTStewieState subscribedServices](self, "subscribedServices")}];
  [v4 setCongestedServices:{-[CTStewieState congestedServices](self, "congestedServices")}];
  [v4 setDataPathAssertedServices:{-[CTStewieState dataPathAssertedServices](self, "dataPathAssertedServices")}];
  [v4 setDemoAllowedServices:{-[CTStewieState demoAllowedServices](self, "demoAllowedServices")}];
  [v4 setOffGridCriteriaSatisfiedServices:{-[CTStewieState offGridCriteriaSatisfiedServices](self, "offGridCriteriaSatisfiedServices")}];
  [v4 setConfiguredForLocationServices:{-[CTStewieState configuredForLocationServices](self, "configuredForLocationServices")}];
  [v4 setReason:{-[CTStewieState reason](self, "reason")}];
  [v4 setBaseReason:{-[CTStewieState baseReason](self, "baseReason")}];
  [v4 setStatus:{-[CTStewieState status](self, "status")}];
  [v4 setTransportType:{-[CTStewieState transportType](self, "transportType")}];
  [v4 setDisplaySatelliteIcon:{-[CTStewieState displaySatelliteIcon](self, "displaySatelliteIcon")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieState allowedServices](self forKey:{"allowedServices"), @"allowedServices"}];
  [coderCopy encodeInteger:-[CTStewieState activeServices](self forKey:{"activeServices"), @"activeServices"}];
  [coderCopy encodeInteger:-[CTStewieState subscriptionDeterminedServices](self forKey:{"subscriptionDeterminedServices"), @"subscriptionDeterminedServices"}];
  [coderCopy encodeInteger:-[CTStewieState subscribedServices](self forKey:{"subscribedServices"), @"subscribedServices"}];
  [coderCopy encodeInteger:-[CTStewieState congestedServices](self forKey:{"congestedServices"), @"congestedServices"}];
  [coderCopy encodeInteger:-[CTStewieState dataPathAssertedServices](self forKey:{"dataPathAssertedServices"), @"dataPathAssertedServices"}];
  [coderCopy encodeInteger:-[CTStewieState demoAllowedServices](self forKey:{"demoAllowedServices"), @"demoAllowedServices"}];
  [coderCopy encodeInteger:-[CTStewieState offGridCriteriaSatisfiedServices](self forKey:{"offGridCriteriaSatisfiedServices"), @"offGridCriteriaSatisfiedServices"}];
  [coderCopy encodeInteger:-[CTStewieState configuredForLocationServices](self forKey:{"configuredForLocationServices"), @"configuredForLocationServices"}];
  [coderCopy encodeInteger:-[CTStewieState status](self forKey:{"status"), @"status"}];
  [coderCopy encodeInteger:-[CTStewieState reason](self forKey:{"reason"), @"reason"}];
  [coderCopy encodeInteger:-[CTStewieState baseReason](self forKey:{"baseReason"), @"baseReason"}];
  [coderCopy encodeInteger:-[CTStewieState transportType](self forKey:{"transportType"), @"transportType"}];
  [coderCopy encodeBool:-[CTStewieState displaySatelliteIcon](self forKey:{"displaySatelliteIcon"), @"displaySatelliteIcon"}];
}

- (CTStewieState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CTStewieState;
  v5 = [(CTStewieState *)&v8 init];
  if (v5)
  {
    v5->_allowedServices = [coderCopy decodeIntegerForKey:@"allowedServices"];
    v5->_activeServices = [coderCopy decodeIntegerForKey:@"activeServices"];
    v5->_subscriptionDeterminedServices = [coderCopy decodeIntegerForKey:@"subscriptionDeterminedServices"];
    v5->_subscribedServices = [coderCopy decodeIntegerForKey:@"subscribedServices"];
    v5->_congestedServices = [coderCopy decodeIntegerForKey:@"congestedServices"];
    v5->_dataPathAssertedServices = [coderCopy decodeIntegerForKey:@"dataPathAssertedServices"];
    v5->_demoAllowedServices = [coderCopy decodeIntegerForKey:@"demoAllowedServices"];
    v5->_offGridCriteriaSatisfiedServices = [coderCopy decodeIntegerForKey:@"offGridCriteriaSatisfiedServices"];
    v5->_configuredForLocationServices = [coderCopy decodeIntegerForKey:@"configuredForLocationServices"];
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v5->_baseReason = [coderCopy decodeIntegerForKey:@"baseReason"];
    v5->_transportType = [coderCopy decodeIntegerForKey:@"transportType"];
    v5->_displaySatelliteIcon = [coderCopy decodeBoolForKey:@"displaySatelliteIcon"];
    v6 = v5;
  }

  return v5;
}

- (BOOL)displayInactiveSOSInStatusBar
{
  v3 = 1;
  if (![(CTStewieState *)self isAllowedService:1])
  {
    v3 = [(CTStewieState *)self isActiveService:1];
  }

  return [(CTStewieState *)self displaySatelliteIcon]&& v3;
}

- (BOOL)isStewieActiveOverInternet
{
  isStewieActive = [(CTStewieState *)self isStewieActive];
  if (isStewieActive)
  {
    LOBYTE(isStewieActive) = [(CTStewieState *)self transportType]== 2;
  }

  return isStewieActive;
}

- (int64_t)statusReasonForService:(int64_t)service
{
  if (service < 1)
  {
    if ((service & 0x3F) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((service & 0x3F) == 0 || ((service + 0x7FFFFFFFFFFFFFFFLL) & service) != 0)
    {
      return result;
    }
  }

  result = [(CTStewieState *)self status];
  if (!result)
  {
    return result;
  }

  if ([(CTStewieState *)self isAllowedService:service])
  {
    return 0;
  }

  if ([(CTStewieState *)self baseReason])
  {

    return [(CTStewieState *)self baseReason];
  }

  else if ([(CTStewieState *)self isPermittedAtCurrentLocation:service])
  {
    if ([(CTStewieState *)self isSubscribedService:service])
    {
      if ([(CTStewieState *)self isCongestedService:service])
      {
        return 10;
      }

      else if ([(CTStewieState *)self isOffGridCriteriaSatisfied:service])
      {
        return 0;
      }

      else
      {
        return 11;
      }
    }

    else if ([(CTStewieState *)self isSubscriptionStatusNetworkDetermined:service])
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    return 4;
  }
}

@end