@interface CTStewieState
- (BOOL)displayInactiveSOSInStatusBar;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToState:(id)a3;
- (BOOL)isStewieActiveOverBB;
- (BOOL)isStewieActiveOverInternet;
- (CTStewieState)init;
- (CTStewieState)initWithCoder:(id)a3;
- (CTStewieState)initWithStewieState:(const StewieState *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)statusReasonForService:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(CTStewieState *)self isStewieActive];
  if (v3)
  {
    LOBYTE(v3) = [(CTStewieState *)self transportType]== 1;
  }

  return v3;
}

- (CTStewieState)initWithStewieState:(const StewieState *)a3
{
  v13.receiver = self;
  v13.super_class = CTStewieState;
  v4 = [(CTStewieState *)&v13 init];
  v5 = v4;
  if (v4)
  {
    [(CTStewieState *)v4 setAllowedServices:a3->var0];
    [(CTStewieState *)v5 setActiveServices:a3->var1];
    [(CTStewieState *)v5 setSubscriptionDeterminedServices:a3->var2];
    [(CTStewieState *)v5 setSubscribedServices:a3->var3];
    [(CTStewieState *)v5 setCongestedServices:a3->var4];
    [(CTStewieState *)v5 setDataPathAssertedServices:a3->var5];
    [(CTStewieState *)v5 setDemoAllowedServices:a3->var6];
    [(CTStewieState *)v5 setOffGridCriteriaSatisfiedServices:a3->var7];
    [(CTStewieState *)v5 setConfiguredForLocationServices:a3->var8];
    if ((a3->var9 - 1) > 3u)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18304DE70[(a3->var9 - 1)];
    }

    [(CTStewieState *)v5 setStatus:v6];
    if (a3->var10 - 1 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_18304DE90[(a3->var10 - 1)];
    }

    [(CTStewieState *)v5 setReason:v7];
    if (a3->var10 - 1 < 7)
    {
      v8 = (a3->var10 - 1) + 1;
    }

    else
    {
      v8 = 0;
    }

    [(CTStewieState *)v5 setBaseReason:v8];
    var11 = a3->var11;
    if (var11 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = var11 == 1;
    }

    [(CTStewieState *)v5 setTransportType:v10];
    [(CTStewieState *)v5 setDisplaySatelliteIcon:a3->var12];
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
  v4 = [(CTStewieState *)self transportType];
  if (v4 > 2)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_1E6A46818[v4];
  }

  [v3 appendFormat:@", transportType=%s", v5];
  v6 = [(CTStewieState *)self displaySatelliteIcon];
  v7 = "no";
  if (v6)
  {
    v7 = "yes";
  }

  [v3 appendFormat:@", displaySatelliteIcon=%s", v7];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToState:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieState *)self allowedServices];
  if (v5 != [v4 allowedServices])
  {
    goto LABEL_15;
  }

  v6 = [(CTStewieState *)self activeServices];
  if (v6 != [v4 activeServices])
  {
    goto LABEL_15;
  }

  v7 = [(CTStewieState *)self subscriptionDeterminedServices];
  if (v7 != [v4 subscriptionDeterminedServices])
  {
    goto LABEL_15;
  }

  v8 = [(CTStewieState *)self subscribedServices];
  if (v8 != [v4 subscribedServices])
  {
    goto LABEL_15;
  }

  v9 = [(CTStewieState *)self congestedServices];
  if (v9 != [v4 congestedServices])
  {
    goto LABEL_15;
  }

  v10 = [(CTStewieState *)self dataPathAssertedServices];
  if (v10 != [v4 dataPathAssertedServices])
  {
    goto LABEL_15;
  }

  v11 = [(CTStewieState *)self demoAllowedServices];
  if (v11 == [v4 demoAllowedServices] && (v12 = -[CTStewieState offGridCriteriaSatisfiedServices](self, "offGridCriteriaSatisfiedServices"), v12 == objc_msgSend(v4, "offGridCriteriaSatisfiedServices")) && (v13 = -[CTStewieState configuredForLocationServices](self, "configuredForLocationServices"), v13 == objc_msgSend(v4, "configuredForLocationServices")) && (v14 = -[CTStewieState status](self, "status"), v14 == objc_msgSend(v4, "status")) && (v15 = -[CTStewieState reason](self, "reason"), v15 == objc_msgSend(v4, "reason")) && (v16 = -[CTStewieState baseReason](self, "baseReason"), v16 == objc_msgSend(v4, "baseReason")) && (v17 = -[CTStewieState transportType](self, "transportType"), v17 == objc_msgSend(v4, "transportType")))
  {
    v18 = [(CTStewieState *)self displaySatelliteIcon];
    v19 = v18 ^ [v4 displaySatelliteIcon] ^ 1;
  }

  else
  {
LABEL_15:
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieState *)self isEqualToState:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTStewieState allowedServices](self forKey:{"allowedServices"), @"allowedServices"}];
  [v4 encodeInteger:-[CTStewieState activeServices](self forKey:{"activeServices"), @"activeServices"}];
  [v4 encodeInteger:-[CTStewieState subscriptionDeterminedServices](self forKey:{"subscriptionDeterminedServices"), @"subscriptionDeterminedServices"}];
  [v4 encodeInteger:-[CTStewieState subscribedServices](self forKey:{"subscribedServices"), @"subscribedServices"}];
  [v4 encodeInteger:-[CTStewieState congestedServices](self forKey:{"congestedServices"), @"congestedServices"}];
  [v4 encodeInteger:-[CTStewieState dataPathAssertedServices](self forKey:{"dataPathAssertedServices"), @"dataPathAssertedServices"}];
  [v4 encodeInteger:-[CTStewieState demoAllowedServices](self forKey:{"demoAllowedServices"), @"demoAllowedServices"}];
  [v4 encodeInteger:-[CTStewieState offGridCriteriaSatisfiedServices](self forKey:{"offGridCriteriaSatisfiedServices"), @"offGridCriteriaSatisfiedServices"}];
  [v4 encodeInteger:-[CTStewieState configuredForLocationServices](self forKey:{"configuredForLocationServices"), @"configuredForLocationServices"}];
  [v4 encodeInteger:-[CTStewieState status](self forKey:{"status"), @"status"}];
  [v4 encodeInteger:-[CTStewieState reason](self forKey:{"reason"), @"reason"}];
  [v4 encodeInteger:-[CTStewieState baseReason](self forKey:{"baseReason"), @"baseReason"}];
  [v4 encodeInteger:-[CTStewieState transportType](self forKey:{"transportType"), @"transportType"}];
  [v4 encodeBool:-[CTStewieState displaySatelliteIcon](self forKey:{"displaySatelliteIcon"), @"displaySatelliteIcon"}];
}

- (CTStewieState)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CTStewieState;
  v5 = [(CTStewieState *)&v8 init];
  if (v5)
  {
    v5->_allowedServices = [v4 decodeIntegerForKey:@"allowedServices"];
    v5->_activeServices = [v4 decodeIntegerForKey:@"activeServices"];
    v5->_subscriptionDeterminedServices = [v4 decodeIntegerForKey:@"subscriptionDeterminedServices"];
    v5->_subscribedServices = [v4 decodeIntegerForKey:@"subscribedServices"];
    v5->_congestedServices = [v4 decodeIntegerForKey:@"congestedServices"];
    v5->_dataPathAssertedServices = [v4 decodeIntegerForKey:@"dataPathAssertedServices"];
    v5->_demoAllowedServices = [v4 decodeIntegerForKey:@"demoAllowedServices"];
    v5->_offGridCriteriaSatisfiedServices = [v4 decodeIntegerForKey:@"offGridCriteriaSatisfiedServices"];
    v5->_configuredForLocationServices = [v4 decodeIntegerForKey:@"configuredForLocationServices"];
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v5->_baseReason = [v4 decodeIntegerForKey:@"baseReason"];
    v5->_transportType = [v4 decodeIntegerForKey:@"transportType"];
    v5->_displaySatelliteIcon = [v4 decodeBoolForKey:@"displaySatelliteIcon"];
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
  v3 = [(CTStewieState *)self isStewieActive];
  if (v3)
  {
    LOBYTE(v3) = [(CTStewieState *)self transportType]== 2;
  }

  return v3;
}

- (int64_t)statusReasonForService:(int64_t)a3
{
  if (a3 < 1)
  {
    if ((a3 & 0x3F) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((a3 & 0x3F) == 0 || ((a3 + 0x7FFFFFFFFFFFFFFFLL) & a3) != 0)
    {
      return result;
    }
  }

  result = [(CTStewieState *)self status];
  if (!result)
  {
    return result;
  }

  if ([(CTStewieState *)self isAllowedService:a3])
  {
    return 0;
  }

  if ([(CTStewieState *)self baseReason])
  {

    return [(CTStewieState *)self baseReason];
  }

  else if ([(CTStewieState *)self isPermittedAtCurrentLocation:a3])
  {
    if ([(CTStewieState *)self isSubscribedService:a3])
    {
      if ([(CTStewieState *)self isCongestedService:a3])
      {
        return 10;
      }

      else if ([(CTStewieState *)self isOffGridCriteriaSatisfied:a3])
      {
        return 0;
      }

      else
      {
        return 11;
      }
    }

    else if ([(CTStewieState *)self isSubscriptionStatusNetworkDetermined:a3])
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