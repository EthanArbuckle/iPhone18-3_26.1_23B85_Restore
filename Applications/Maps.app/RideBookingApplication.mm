@interface RideBookingApplication
- (BOOL)enabled;
- (NSString)description;
- (NSString)name;
- (NSString)uniqueName;
- (RideBookingApplication)initWithExtension:(id)extension;
- (RideBookingApplicationRideStatusDelegate)delegate;
- (id)_connectionWithIntent:(id)intent;
- (id)_passengersChoiceFromAvailablePartySizeOptions:(id)options optionPriceRange:(id)range;
- (id)_statusWithGetRideStatusIntentResponse:(id)response;
- (id)_statusWithListRideOptionsResponse:(id)response;
- (id)_statusWithRequestRideStatusIntentResponse:(id)response;
- (id)_statusWithRideOption:(id)option requestRideIntent:(id)intent requestRideEtaResponse:(id)response;
- (id)iconWithFormat:(int)format;
- (void)cancelRideWithRideStatus:(id)status completion:(id)completion;
- (void)checkIfCanCancelRideWithRideStatus:(id)status completion:(id)completion;
- (void)dealloc;
- (void)didChangeProtectionStatusForBundleId:(id)id;
- (void)enableForUse;
- (void)getRequestRideStatusWithPickupLocation:(id)location dropOffLocation:(id)offLocation rideOption:(id)option completion:(id)completion;
- (void)getRideOptionStatusWithPickupLocation:(id)location dropOffLocation:(id)offLocation completion:(id)completion;
- (void)getRideStatusWithCompletion:(id)completion;
- (void)getRideStatusWithPickupLocation:(id)location dropOffLocation:(id)offLocation rideOption:(id)option partySize:(unint64_t)size paymentMethod:(id)method completion:(id)completion;
- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items;
- (void)openWithActivity:(id)activity;
- (void)sendFeedbackForRideStatus:(id)status feedbackRating:(id)rating feedbackTip:(id)tip completion:(id)completion;
- (void)startUpdates;
- (void)stopUpdates;
@end

@implementation RideBookingApplication

- (RideBookingApplicationRideStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(MapsSuggestionsAppGuardian *)self->_appGuardian unregisterAppTracker:self];
  v3.receiver = self;
  v3.super_class = RideBookingApplication;
  [(RideBookingApplication *)&v3 dealloc];
}

- (void)didChangeProtectionStatusForBundleId:(id)id
{
  idCopy = id;
  objc_initWeak(&location, self);
  identifier = [(RideBookingApplication *)self identifier];
  v6 = isExtensionLocked();

  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006D4790;
    block[3] = &unk_101661340;
    objc_copyWeak(&v9, &location);
    block[4] = self;
    dispatch_async(queue, block);
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)_statusWithListRideOptionsResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (responseCopy)
  {
    code = [responseCopy code];
    v7 = 0;
    v8 = 1;
    selfCopy = self;
    if (code > 6)
    {
      if (code > 8)
      {
        if (code == 9)
        {
          v8 = 0;
          v7 = 10;
        }

        else if (code == 10)
        {
          v8 = 0;
          v7 = 11;
        }
      }

      else
      {
        v8 = 0;
        if (code == 7)
        {
          v7 = 8;
        }

        else
        {
          v7 = 9;
        }
      }
    }

    else if (code > 4)
    {
      v8 = 0;
      if (code == 5)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }
    }

    else if (!code || code == 4)
    {
      v8 = 0;
      v7 = 5;
    }

    v56 = v7;
    v57 = v8;
    v63 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v58 = v5;
    paymentMethods = [v5 paymentMethods];
    v11 = [paymentMethods countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v69;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v69 != v13)
          {
            objc_enumerationMutation(paymentMethods);
          }

          v15 = *(*(&v68 + 1) + 8 * i);
          if ([v15 type] == 8)
          {
            v16 = +[PKPaymentRequest availableNetworks];
            v17 = [PKPaymentAuthorizationController canMakePaymentsUsingNetworks:v16];

            if (!v17)
            {
              continue;
            }
          }

          v18 = objc_alloc_init(RideBookingPaymentMethod);
          [(RideBookingPaymentMethod *)v18 setIntentsPaymentMethod:v15];
          [v63 addObject:v18];
        }

        v12 = [paymentMethods countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v12);
    }

    v60 = objc_opt_new();
    rideOptions = [v58 rideOptions];
    v20 = [rideOptions sortedArrayUsingComparator:&stru_101626CB0];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v65;
      v25 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      do
      {
        v26 = 0;
        v61 = v23;
        do
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v64 + 1) + 8 * v26);
          name = [v27 name];
          if (![name length])
          {
            goto LABEL_43;
          }

          estimatedPickupDate = [v27 estimatedPickupDate];

          if (!estimatedPickupDate)
          {
            goto LABEL_44;
          }

          priceRange = [v27 priceRange];
          minimumPrice = [priceRange minimumPrice];
          notANumber = [v25[419] notANumber];
          if ([minimumPrice isEqualToNumber:notANumber])
          {

LABEL_39:
            name = GEOFindOrCreateLog();
            if (os_log_type_enabled(name, OS_LOG_TYPE_INFO))
            {
              v38 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
              v39 = [[NSString alloc] initWithFormat:@"Skipping INRideOption because the pricing is malformed: %@", v27];
              *buf = 136315394;
              v73 = v38;
              v74 = 2112;
              v75 = v39;
              _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
            }

            goto LABEL_42;
          }

          priceRange2 = [v27 priceRange];
          maximumPrice = [priceRange2 maximumPrice];
          [v25[419] notANumber];
          v35 = v24;
          v37 = v36 = v21;
          v62 = [maximumPrice isEqualToNumber:v37];

          v21 = v36;
          v24 = v35;

          v23 = v61;
          if (v62)
          {
            goto LABEL_39;
          }

          availablePartySizeOptions = [v27 availablePartySizeOptions];
          priceRange3 = [v27 priceRange];
          name = [(RideBookingApplication *)selfCopy _passengersChoiceFromAvailablePartySizeOptions:availablePartySizeOptions optionPriceRange:priceRange3];

          v42 = [RideBookingRideOption alloc];
          name2 = [v27 name];
          estimatedPickupDate2 = [v27 estimatedPickupDate];
          v45 = [(RideBookingRideOption *)v42 initWithApplication:selfCopy optionName:name2 paymentMethods:v63 estimatedPickupDate:estimatedPickupDate2 passengersChoice:name];

          [(RideBookingRideOption *)v45 setIntentsRideOption:v27];
          [v60 addObject:v45];

LABEL_42:
          v25 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_43:

LABEL_44:
          v26 = v26 + 1;
        }

        while (v23 != v26);
        v23 = [v21 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v23);
    }

    if ((v57 & ([v60 count] == 0)) != 0)
    {
      v46 = 3;
    }

    else
    {
      v46 = v56;
    }

    v5 = v58;
    expirationDate = [v58 expirationDate];
    if (!expirationDate)
    {
      v48 = [NSDate alloc];
      GEOConfigGetDouble();
      expirationDate = [v48 initWithTimeIntervalSinceNow:?];
    }

    [expirationDate timeIntervalSinceNow];
    v50 = v49;
    GEOConfigGetDouble();
    if (v50 < v51)
    {
      v52 = [NSDate alloc];
      GEOConfigGetDouble();
      v53 = [v52 initWithTimeIntervalSinceNow:?];

      expirationDate = v53;
    }

    userActivity = [v58 userActivity];
    v9 = [RideBookingRideOptionStatus statusWithApplication:selfCopy rideOptions:v60 expirationDate:expirationDate userActivity:userActivity rideOptionStatusError:v46];
  }

  else
  {
    v9 = [RideBookingRideOptionStatus statusWithApplication:self error:4];
  }

  return v9;
}

- (id)_statusWithRideOption:(id)option requestRideIntent:(id)intent requestRideEtaResponse:(id)response
{
  optionCopy = option;
  intentCopy = intent;
  responseCopy = response;
  v11 = responseCopy;
  if (!optionCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v47 = 1024;
      v48 = 878;
      v49 = 2082;
      v50 = "[RideBookingApplication _statusWithRideOption:requestRideIntent:requestRideEtaResponse:]";
      v51 = 2082;
      v52 = "rideOption==nil";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. rideOption should not be nil";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, buf, 0x26u);
    }

LABEL_13:

    v19 = 0;
    goto LABEL_24;
  }

  if (!intentCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v47 = 1024;
      v48 = 879;
      v49 = 2082;
      v50 = "[RideBookingApplication _statusWithRideOption:requestRideIntent:requestRideEtaResponse:]";
      v51 = 2082;
      v52 = "requestRideIntent==nil";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. requestRideIntent should not be nil";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([responseCopy code] != 1 && objc_msgSend(v11, "code") != 3)
  {
    selfCopy2 = self;
    v21 = 3;
    goto LABEL_16;
  }

  if (!v11)
  {
    selfCopy2 = self;
    v21 = 2;
LABEL_16:
    v19 = [RideBookingRequestRideStatus statusWithApplication:selfCopy2 error:v21];
    goto LABEL_24;
  }

  rideStatus = [v11 rideStatus];
  estimatedPickupDate = [rideStatus estimatedPickupDate];
  v14 = [estimatedPickupDate copy];

  v44 = v14;
  if (v14)
  {
    [v14 timeIntervalSinceNow];
    v16 = [NSNumber numberWithUnsignedInteger:vcvtpd_u64_f64(v15 * 0.0166666667)];
  }

  else
  {
    v16 = 0;
  }

  rideStatus2 = [v11 rideStatus];
  rideOption = [rideStatus2 rideOption];

  name = [rideOption name];
  if (![name length])
  {

    goto LABEL_22;
  }

  estimatedPickupDate2 = [rideOption estimatedPickupDate];

  if (!estimatedPickupDate2)
  {
LABEL_22:
    v19 = [RideBookingRequestRideStatus statusWithApplication:self error:3];
    goto LABEL_23;
  }

  availablePartySizeOptions = [rideOption availablePartySizeOptions];
  priceRange = [rideOption priceRange];
  v42 = [(RideBookingApplication *)self _passengersChoiceFromAvailablePartySizeOptions:availablePartySizeOptions optionPriceRange:priceRange];

  v28 = [RideBookingRideOption alloc];
  name2 = [rideOption name];
  paymentMethods = [optionCopy paymentMethods];
  [rideOption estimatedPickupDate];
  v31 = v43 = v16;
  v32 = [(RideBookingRideOption *)v28 initWithApplication:self optionName:name2 paymentMethods:paymentMethods estimatedPickupDate:v31 passengersChoice:v42];

  [(RideBookingRideOption *)v32 setIntentsRideOption:rideOption];
  pickupLocation = [intentCopy pickupLocation];
  location = [pickupLocation location];
  [location coordinate];
  v36 = v35;
  v38 = v37;
  pickupLocation2 = [intentCopy pickupLocation];
  dropOffLocation = [intentCopy dropOffLocation];
  v19 = [RideBookingRequestRideStatus statusWithApplication:self rideOption:v32 startingWaypointCoordinate:pickupLocation2 origin:dropOffLocation destination:0 loadingRequestRideStatus:v43 etaMinutesAtStartWaypoint:v36, v38];

  v16 = v43;
LABEL_23:

LABEL_24:

  return v19;
}

- (id)_statusWithRequestRideStatusIntentResponse:(id)response
{
  responseCopy = response;
  code = [responseCopy code];
  if (code > 0xA)
  {
    v29 = 0;
  }

  else
  {
    v29 = qword_1012132F0[code];
  }

  rideStatus = [responseCopy rideStatus];
  rideOption = [rideStatus rideOption];

  rideStatus2 = [responseCopy rideStatus];
  availablePartySizeOptions = [rideOption availablePartySizeOptions];
  priceRange = [rideOption priceRange];
  v28 = [(RideBookingApplication *)self _passengersChoiceFromAvailablePartySizeOptions:availablePartySizeOptions optionPriceRange:priceRange];

  v11 = [RideBookingRideOption alloc];
  name = [rideOption name];
  estimatedPickupDate = [rideOption estimatedPickupDate];
  v14 = [(RideBookingRideOption *)v11 initWithApplication:self optionName:name paymentMethods:&__NSArray0__struct estimatedPickupDate:estimatedPickupDate passengersChoice:v28];

  [(RideBookingRideOption *)v14 setIntentsRideOption:rideOption];
  v27 = [RideBookingRideStatus alloc];
  completionStatus = [rideStatus2 completionStatus];
  isCanceled = [completionStatus isCanceled];
  completionStatus2 = [rideStatus2 completionStatus];
  isCanceledByService = [completionStatus2 isCanceledByService];
  [rideStatus2 userActivityForCancelingInApplication];
  v19 = v18 = self;
  rideIdentifier = [rideStatus2 rideIdentifier];
  phase = [rideStatus2 phase];
  if ((phase - 1) >= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = phase;
  }

  v23 = 3;
  if (responseCopy)
  {
    v23 = v29;
  }

  v24 = [(RideBookingRideStatus *)v27 initWithApplication:v18 rideOption:v14 canceled:isCanceled canceledByService:isCanceledByService userActivityForCanceling:v19 identifier:rideIdentifier phase:v22 error:v23];

  [(RideBookingRideStatus *)v24 setIntentsRideStatus:rideStatus2];
  [(RideBookingRideStatus *)v24 setRequestRideIntentResponse:responseCopy];

  return v24;
}

- (id)_statusWithGetRideStatusIntentResponse:(id)response
{
  responseCopy = response;
  code = [responseCopy code];
  if (code > 7)
  {
    v29 = 0;
  }

  else
  {
    v29 = qword_1012132B0[code];
  }

  rideStatus = [responseCopy rideStatus];
  rideOption = [rideStatus rideOption];

  rideStatus2 = [responseCopy rideStatus];
  availablePartySizeOptions = [rideOption availablePartySizeOptions];
  priceRange = [rideOption priceRange];
  v28 = [(RideBookingApplication *)self _passengersChoiceFromAvailablePartySizeOptions:availablePartySizeOptions optionPriceRange:priceRange];

  v11 = [RideBookingRideOption alloc];
  name = [rideOption name];
  estimatedPickupDate = [rideOption estimatedPickupDate];
  v14 = [(RideBookingRideOption *)v11 initWithApplication:self optionName:name paymentMethods:&__NSArray0__struct estimatedPickupDate:estimatedPickupDate passengersChoice:v28];

  [(RideBookingRideOption *)v14 setIntentsRideOption:rideOption];
  v27 = [RideBookingRideStatus alloc];
  completionStatus = [rideStatus2 completionStatus];
  isCanceled = [completionStatus isCanceled];
  completionStatus2 = [rideStatus2 completionStatus];
  isCanceledByService = [completionStatus2 isCanceledByService];
  [rideStatus2 userActivityForCancelingInApplication];
  v19 = v18 = self;
  rideIdentifier = [rideStatus2 rideIdentifier];
  phase = [rideStatus2 phase];
  if ((phase - 1) >= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = phase;
  }

  v23 = 3;
  if (responseCopy)
  {
    v23 = v29;
  }

  v24 = [(RideBookingRideStatus *)v27 initWithApplication:v18 rideOption:v14 canceled:isCanceled canceledByService:isCanceledByService userActivityForCanceling:v19 identifier:rideIdentifier phase:v22 error:v23];

  [(RideBookingRideStatus *)v24 setIntentsRideStatus:rideStatus2];
  [(RideBookingRideStatus *)v24 setGetRideStatusIntentResponse:responseCopy];

  return v24;
}

- (id)_passengersChoiceFromAvailablePartySizeOptions:(id)options optionPriceRange:(id)range
{
  rangeCopy = range;
  v6 = rangeCopy;
  if (options)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006D5A74;
    v8[3] = &unk_101626C70;
    v9 = rangeCopy;
    options = sub_100021DB0(options, v8);
  }

  return options;
}

- (void)openWithActivity:(id)activity
{
  activityCopy = activity;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D5BC8;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = activityCopy;
  v5 = activityCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)cancelRideWithRideStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [INCancelRideIntent alloc];
    identifier = [statusCopy identifier];
    v10 = [v8 initWithRideIdentifier:identifier];

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v13 = [NSString alloc];
      identifier2 = [(RideBookingApplication *)self identifier];
      v15 = [v13 initWithFormat:@"%@ handling CancelRide: %@", identifier2, v10];
      *buf = 136315394;
      v27 = v12;
      v28 = 2112;
      *v29 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v16 = [(RideBookingApplication *)self _connectionWithIntent:v10];
    objc_initWeak(&location, self);
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v27 = uniqueName;
      v28 = 2080;
      *v29 = "cancelRide_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v19 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cancelRide_resumeWithCompletionHandler", "", buf, 2u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006D62E4;
    v21[3] = &unk_101626AE0;
    objc_copyWeak(&v24, &location);
    v23 = completionCopy;
    v20 = v16;
    v22 = v20;
    [v20 resumeWithCompletionHandler:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v28 = 1024;
      *v29 = 590;
      *&v29[4] = 2082;
      *&v29[6] = "[RideBookingApplication cancelRideWithRideStatus:completion:]";
      v30 = 2082;
      v31 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)checkIfCanCancelRideWithRideStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [INCancelRideIntent alloc];
    identifier = [statusCopy identifier];
    v10 = [v8 initWithRideIdentifier:identifier];

    v11 = [(RideBookingApplication *)self _connectionWithIntent:v10];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v14 = [NSString alloc];
      identifier2 = [(RideBookingApplication *)self identifier];
      v16 = [v14 initWithFormat:@"%@ confirming CancelRide: %@", identifier2, v10];
      *buf = 136315394;
      v27 = v13;
      v28 = 2112;
      *v29 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v27 = uniqueName;
      v28 = 2080;
      *v29 = "checkIfCanCancelRide_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v19 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "checkIfCanCancelRide_resumeWithCompletionHandler", "", buf, 2u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006D7634;
    v21[3] = &unk_101626AE0;
    objc_copyWeak(&v24, &location);
    v23 = completionCopy;
    v20 = v11;
    v22 = v20;
    [v20 resumeWithCompletionHandler:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v28 = 1024;
      *v29 = 522;
      *&v29[4] = 2082;
      *&v29[6] = "[RideBookingApplication checkIfCanCancelRideWithRideStatus:completion:]";
      v30 = 2082;
      v31 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)sendFeedbackForRideStatus:(id)status feedbackRating:(id)rating feedbackTip:(id)tip completion:(id)completion
{
  statusCopy = status;
  ratingCopy = rating;
  tipCopy = tip;
  completionCopy = completion;
  v31 = statusCopy;
  if (completionCopy)
  {
    v14 = [INSendRideFeedbackIntent alloc];
    identifier = [statusCopy identifier];
    v16 = [v14 initWithRideIdentifier:identifier];

    if (ratingCopy)
    {
      [v16 setRating:ratingCopy];
      if (!tipCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      rating = [v16 rating];
      [v16 setRating:rating];

      if (!tipCopy)
      {
LABEL_9:
        v22 = [(RideBookingApplication *)self _connectionWithIntent:v16];
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
          v25 = [NSString alloc];
          identifier2 = [(RideBookingApplication *)self identifier];
          v27 = [v25 initWithFormat:@"%@ handling SendRideFeeback: %@", identifier2, v16, v31];
          *buf = 136315394;
          v37 = v24;
          v38 = 2112;
          *v39 = v27;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        objc_initWeak(&location, self);
        v28 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          uniqueName = [(RideBookingApplication *)self uniqueName];
          *buf = 138412546;
          v37 = uniqueName;
          v38 = 2080;
          *v39 = "sendFeedbackForRide_resumeWithCompletionHandler";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
        }

        v30 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "sendFeedbackForRide_resumeWithCompletionHandler", "", buf, 2u);
        }

        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1006D88EC;
        v32[3] = &unk_101626BA8;
        objc_copyWeak(&v34, &location);
        v33 = completionCopy;
        [v22 resumeWithCompletionHandler:v32];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);

        goto LABEL_16;
      }
    }

    v18 = [INCurrencyAmount alloc];
    amount = [tipCopy amount];
    currencyCode = [tipCopy currencyCode];
    v21 = [v18 initWithAmount:amount currencyCode:currencyCode];
    [v16 setTip:v21];

    goto LABEL_9;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v37 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
    v38 = 1024;
    *v39 = 465;
    *&v39[4] = 2082;
    *&v39[6] = "[RideBookingApplication sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]";
    v40 = 2082;
    v41 = "nil == (completion)";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
  }

LABEL_16:
}

- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items
{
  updateCopy = update;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006D9580;
  v8[3] = &unk_101661480;
  objc_copyWeak(&v11, &location);
  v9 = updateCopy;
  selfCopy = self;
  v7 = updateCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)stopUpdates
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
    v5 = [NSString alloc];
    identifier = [(RideBookingApplication *)self identifier];
    v7 = [v5 initWithFormat:@"%@ stopping updates", identifier];
    *buf = 136315394;
    v21 = v4;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (!self->_getRideStatusConnection)
  {
    v8 = [INCExtensionConnection alloc];
    v9 = objc_opt_new();
    v10 = [v8 initWithIntent:v9];
    getRideStatusConnection = self->_getRideStatusConnection;
    self->_getRideStatusConnection = v10;

    [(INCExtensionConnection *)self->_getRideStatusConnection setRequiresTCC:0];
    identifier2 = [(RideBookingApplication *)self identifier];
    intent = [(INCExtensionConnection *)self->_getRideStatusConnection intent];
    [intent _setLaunchId:identifier2];
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(RideBookingApplication *)self uniqueName];
    *buf = 138412546;
    v21 = uniqueName;
    v22 = 2080;
    v23 = "stopGetRideStatusUpdates_resumeWithCompletionHandler";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v16 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "stopGetRideStatusUpdates_resumeWithCompletionHandler", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v17 = self->_getRideStatusConnection;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006D9B34;
  v18[3] = &unk_101626BF8;
  objc_copyWeak(&v19, buf);
  [(INCExtensionConnection *)v17 resumeWithCompletionHandler:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)startUpdates
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
    v5 = [NSString alloc];
    identifier = [(RideBookingApplication *)self identifier];
    v7 = [v5 initWithFormat:@"%@ starting updates", identifier];
    *buf = 136315394;
    v21 = v4;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (!self->_getRideStatusConnection)
  {
    v8 = [INCExtensionConnection alloc];
    v9 = objc_opt_new();
    v10 = [v8 initWithIntent:v9];
    getRideStatusConnection = self->_getRideStatusConnection;
    self->_getRideStatusConnection = v10;

    [(INCExtensionConnection *)self->_getRideStatusConnection setRequiresTCC:0];
    identifier2 = [(RideBookingApplication *)self identifier];
    intent = [(INCExtensionConnection *)self->_getRideStatusConnection intent];
    [intent _setLaunchId:identifier2];
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(RideBookingApplication *)self uniqueName];
    *buf = 138412546;
    v21 = uniqueName;
    v22 = 2080;
    v23 = "startGetRideStatusUpdates_resumeWithCompletionHandler";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v16 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "startGetRideStatusUpdates_resumeWithCompletionHandler", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v17 = self->_getRideStatusConnection;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006DA084;
  v18[3] = &unk_101626BF8;
  objc_copyWeak(&v19, buf);
  [(INCExtensionConnection *)v17 resumeWithCompletionHandler:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)getRideStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v7 = [NSString alloc];
      identifier = [(RideBookingApplication *)self identifier];
      v9 = [v7 initWithFormat:@"%@ handling GetRideStatus", identifier];
      *buf = 136315394;
      v20 = v6;
      v21 = 2112;
      *v22 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v10 = objc_opt_new();
    v11 = [(RideBookingApplication *)self _connectionWithIntent:v10];

    objc_initWeak(&location, self);
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v20 = uniqueName;
      v21 = 2080;
      *v22 = "getRideStatusWithCompletion_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v14 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getRideStatusWithCompletion_resumeWithCompletionHandler", "", buf, 2u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006DA66C;
    v15[3] = &unk_101626BA8;
    objc_copyWeak(&v17, &location);
    v16 = completionCopy;
    [v11 resumeWithCompletionHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v21 = 1024;
      *v22 = 343;
      *&v22[4] = 2082;
      *&v22[6] = "[RideBookingApplication getRideStatusWithCompletion:]";
      v23 = 2082;
      v24 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)getRideStatusWithPickupLocation:(id)location dropOffLocation:(id)offLocation rideOption:(id)option partySize:(unint64_t)size paymentMethod:(id)method completion:(id)completion
{
  locationCopy = location;
  offLocationCopy = offLocation;
  optionCopy = option;
  methodCopy = method;
  completionCopy = completion;
  v32 = optionCopy;
  if (completionCopy)
  {
    name = [optionCopy name];
    v31 = [[INSpeakableString alloc] initWithVocabularyIdentifier:name spokenPhrase:name pronunciationHint:name];
    v18 = [INRequestRideIntent alloc];
    v19 = [NSNumber numberWithUnsignedInteger:size];
    intentsPaymentMethod = [methodCopy intentsPaymentMethod];
    v21 = [v18 initWithPickupLocation:locationCopy dropOffLocation:offLocationCopy rideOptionName:v31 partySize:v19 paymentMethod:intentsPaymentMethod scheduledPickupTime:0];

    v22 = [(RideBookingApplication *)self _connectionWithIntent:v21];
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v25 = [NSString alloc];
      identifier = [(RideBookingApplication *)self identifier];
      v27 = [v25 initWithFormat:@"%@ handling RequestRide: %@", identifier, v21];
      *buf = 136315394;
      v40 = v24;
      v41 = 2112;
      *v42 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v28 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v40 = uniqueName;
      v41 = 2080;
      *v42 = "getRideStatus_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v30 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getRideStatus_resumeWithCompletionHandler", "", buf, 2u);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1006DB7F4;
    v35[3] = &unk_101626BA8;
    objc_copyWeak(&v37, &location);
    v36 = completionCopy;
    [v22 resumeWithCompletionHandler:v35];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    name = GEOFindOrCreateLog();
    if (os_log_type_enabled(name, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v40 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v41 = 1024;
      *v42 = 278;
      *&v42[4] = 2082;
      *&v42[6] = "[RideBookingApplication getRideStatusWithPickupLocation:dropOffLocation:rideOption:partySize:paymentMethod:completion:]";
      v43 = 2082;
      v44 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)getRequestRideStatusWithPickupLocation:(id)location dropOffLocation:(id)offLocation rideOption:(id)option completion:(id)completion
{
  locationCopy = location;
  offLocationCopy = offLocation;
  optionCopy = option;
  completionCopy = completion;
  if (completionCopy)
  {
    name = [optionCopy name];
    v25 = [[INSpeakableString alloc] initWithVocabularyIdentifier:name spokenPhrase:name pronunciationHint:name];
    v14 = [[INRequestRideIntent alloc] initWithPickupLocation:locationCopy dropOffLocation:offLocationCopy rideOptionName:v25 partySize:0 paymentMethod:0 scheduledPickupTime:0];
    v26 = [(RideBookingApplication *)self _connectionWithIntent:v14];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v17 = [NSString alloc];
      identifier = [(RideBookingApplication *)self identifier];
      v19 = [v17 initWithFormat:@"%@ confirming RequestRide: %@", identifier, v14];
      *buf = 136315394;
      v37 = v16;
      v38 = 2112;
      *v39 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v37 = uniqueName;
      v38 = 2080;
      *v39 = "requestRideStatus_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v22 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestRideStatus_resumeWithCompletionHandler", "", buf, 2u);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1006DC974;
    v28[3] = &unk_101626B58;
    objc_copyWeak(&v34, &location);
    v33 = completionCopy;
    v29 = locationCopy;
    v23 = v14;
    v30 = v23;
    v31 = optionCopy;
    v24 = v26;
    v32 = v24;
    [v24 resumeWithCompletionHandler:v28];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    name = GEOFindOrCreateLog();
    if (os_log_type_enabled(name, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v38 = 1024;
      *v39 = 200;
      *&v39[4] = 2082;
      *&v39[6] = "[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:]";
      v40 = 2082;
      v41 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)getRideOptionStatusWithPickupLocation:(id)location dropOffLocation:(id)offLocation completion:(id)completion
{
  locationCopy = location;
  offLocationCopy = offLocation;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v13 = [NSString alloc];
      identifier = [(RideBookingApplication *)self identifier];
      v15 = [v13 initWithFormat:@"%@ handling ListRideOptions", identifier];
      *buf = 136315394;
      v35 = v12;
      v36 = 2112;
      *v37 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    identifier2 = [(RideBookingApplication *)self identifier];
    v17 = isExtensionLocked();

    if (v17)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006DDCA8;
      block[3] = &unk_101660648;
      objc_copyWeak(&v32, &location);
      v31 = completionCopy;
      dispatch_async(queue, block);

      objc_destroyWeak(&v32);
    }

    else
    {
      v20 = [[INListRideOptionsIntent alloc] initWithPickupLocation:locationCopy dropOffLocation:offLocationCopy];
      v21 = [(RideBookingApplication *)self _connectionWithIntent:v20];
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [(RideBookingApplication *)self uniqueName];
        *buf = 138412546;
        v35 = uniqueName;
        v36 = 2080;
        *v37 = "listRideOptions_resumeWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v24 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "listRideOptions_resumeWithCompletionHandler", "", buf, 2u);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1006DDDEC;
      v26[3] = &unk_101626AE0;
      objc_copyWeak(&v29, &location);
      v28 = completionCopy;
      v25 = v21;
      v27 = v25;
      [v25 resumeWithCompletionHandler:v26];

      objc_destroyWeak(&v29);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v36 = 1024;
      *v37 = 137;
      *&v37[4] = 2082;
      *&v37[6] = "[RideBookingApplication getRideOptionStatusWithPickupLocation:dropOffLocation:completion:]";
      v38 = 2082;
      v39 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (id)_connectionWithIntent:(id)intent
{
  intentCopy = intent;
  identifier = [(RideBookingApplication *)self identifier];
  [intentCopy _setLaunchId:identifier];

  v6 = [[INCExtensionConnection alloc] initWithIntent:intentCopy];
  [v6 setRequiresTCC:0];

  return v6;
}

- (NSString)name
{
  identifier = [(RideBookingApplication *)self identifier];

  if (!identifier || (-[RideBookingApplication identifier](self, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), +[LSBundleRecord bundleRecordWithBundleIdentifier:allowPlaceholder:error:](LSBundleRecord, "bundleRecordWithBundleIdentifier:allowPlaceholder:error:", v4, 0, 0), v5 = objc_claimAutoreleasedReturnValue(), v4, [v5 localizedName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "copy"), v6, v5, !v7))
  {
    extension = [(RideBookingApplication *)self extension];
    displayName = [extension displayName];
    v7 = [displayName copy];
  }

  return v7;
}

- (BOOL)enabled
{
  extension = [(RideBookingApplication *)self extension];
  isEnabled = [extension isEnabled];

  return isEnabled;
}

- (void)enableForUse
{
  extension = [(RideBookingApplication *)self extension];
  [extension _setEnabled:1 error:0];
}

- (NSString)description
{
  identifier = self->_identifier;
  name = [(RideBookingApplication *)self name];
  v5 = [NSString stringWithFormat:@"Pointer: %p, Identifier: %@, Name: %@", self, identifier, name];

  return v5;
}

- (RideBookingApplication)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v22.receiver = self;
  v22.super_class = RideBookingApplication;
  v6 = [(RideBookingApplication *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
    _containingAppIdentifer = [extensionCopy _containingAppIdentifer];
    v9 = [_containingAppIdentifer copy];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = v7->_identifier;
    if (v11)
    {
      v12 = [LSBundleRecord bundleRecordWithBundleIdentifier:v11 allowPlaceholder:0 error:0];
    }

    else
    {
      v12 = 0;
    }

    bundleVersion = [v12 bundleVersion];
    version = v7->_version;
    v7->_version = bundleVersion;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("RideBookingApplication", v15);
    queue = v7->_queue;
    v7->_queue = v16;

    v18 = MapsSuggestionsResourceDepotForMapsProcess();
    oneAppGuardian = [v18 oneAppGuardian];
    appGuardian = v7->_appGuardian;
    v7->_appGuardian = oneAppGuardian;

    [(MapsSuggestionsAppGuardian *)v7->_appGuardian registerAppTracker:v7];
  }

  return v7;
}

- (id)iconWithFormat:(int)format
{
  v3 = *&format;
  extension = [(RideBookingApplication *)self extension];
  v5 = [extension _iconWithFormat:v3];

  return v5;
}

@end