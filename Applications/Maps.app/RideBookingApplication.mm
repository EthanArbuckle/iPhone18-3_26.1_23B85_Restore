@interface RideBookingApplication
- (BOOL)enabled;
- (NSString)description;
- (NSString)name;
- (NSString)uniqueName;
- (RideBookingApplication)initWithExtension:(id)a3;
- (RideBookingApplicationRideStatusDelegate)delegate;
- (id)_connectionWithIntent:(id)a3;
- (id)_passengersChoiceFromAvailablePartySizeOptions:(id)a3 optionPriceRange:(id)a4;
- (id)_statusWithGetRideStatusIntentResponse:(id)a3;
- (id)_statusWithListRideOptionsResponse:(id)a3;
- (id)_statusWithRequestRideStatusIntentResponse:(id)a3;
- (id)_statusWithRideOption:(id)a3 requestRideIntent:(id)a4 requestRideEtaResponse:(id)a5;
- (id)iconWithFormat:(int)a3;
- (void)cancelRideWithRideStatus:(id)a3 completion:(id)a4;
- (void)checkIfCanCancelRideWithRideStatus:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didChangeProtectionStatusForBundleId:(id)a3;
- (void)enableForUse;
- (void)getRequestRideStatusWithPickupLocation:(id)a3 dropOffLocation:(id)a4 rideOption:(id)a5 completion:(id)a6;
- (void)getRideOptionStatusWithPickupLocation:(id)a3 dropOffLocation:(id)a4 completion:(id)a5;
- (void)getRideStatusWithCompletion:(id)a3;
- (void)getRideStatusWithPickupLocation:(id)a3 dropOffLocation:(id)a4 rideOption:(id)a5 partySize:(unint64_t)a6 paymentMethod:(id)a7 completion:(id)a8;
- (void)intentResponseDidUpdate:(id)a3 withSerializedCacheItems:(id)a4;
- (void)openWithActivity:(id)a3;
- (void)sendFeedbackForRideStatus:(id)a3 feedbackRating:(id)a4 feedbackTip:(id)a5 completion:(id)a6;
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

- (void)didChangeProtectionStatusForBundleId:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(RideBookingApplication *)self identifier];
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

- (id)_statusWithListRideOptionsResponse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    v7 = 0;
    v8 = 1;
    v59 = self;
    if (v6 > 6)
    {
      if (v6 > 8)
      {
        if (v6 == 9)
        {
          v8 = 0;
          v7 = 10;
        }

        else if (v6 == 10)
        {
          v8 = 0;
          v7 = 11;
        }
      }

      else
      {
        v8 = 0;
        if (v6 == 7)
        {
          v7 = 8;
        }

        else
        {
          v7 = 9;
        }
      }
    }

    else if (v6 > 4)
    {
      v8 = 0;
      if (v6 == 5)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }
    }

    else if (!v6 || v6 == 4)
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
    v10 = [v5 paymentMethods];
    v11 = [v10 countByEnumeratingWithState:&v68 objects:v77 count:16];
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
            objc_enumerationMutation(v10);
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

        v12 = [v10 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v12);
    }

    v60 = objc_opt_new();
    v19 = [v58 rideOptions];
    v20 = [v19 sortedArrayUsingComparator:&stru_101626CB0];

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
          v28 = [v27 name];
          if (![v28 length])
          {
            goto LABEL_43;
          }

          v29 = [v27 estimatedPickupDate];

          if (!v29)
          {
            goto LABEL_44;
          }

          v30 = [v27 priceRange];
          v31 = [v30 minimumPrice];
          v32 = [v25[419] notANumber];
          if ([v31 isEqualToNumber:v32])
          {

LABEL_39:
            v28 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v38 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
              v39 = [[NSString alloc] initWithFormat:@"Skipping INRideOption because the pricing is malformed: %@", v27];
              *buf = 136315394;
              v73 = v38;
              v74 = 2112;
              v75 = v39;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
            }

            goto LABEL_42;
          }

          v33 = [v27 priceRange];
          v34 = [v33 maximumPrice];
          [v25[419] notANumber];
          v35 = v24;
          v37 = v36 = v21;
          v62 = [v34 isEqualToNumber:v37];

          v21 = v36;
          v24 = v35;

          v23 = v61;
          if (v62)
          {
            goto LABEL_39;
          }

          v40 = [v27 availablePartySizeOptions];
          v41 = [v27 priceRange];
          v28 = [(RideBookingApplication *)v59 _passengersChoiceFromAvailablePartySizeOptions:v40 optionPriceRange:v41];

          v42 = [RideBookingRideOption alloc];
          v43 = [v27 name];
          v44 = [v27 estimatedPickupDate];
          v45 = [(RideBookingRideOption *)v42 initWithApplication:v59 optionName:v43 paymentMethods:v63 estimatedPickupDate:v44 passengersChoice:v28];

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
    v47 = [v58 expirationDate];
    if (!v47)
    {
      v48 = [NSDate alloc];
      GEOConfigGetDouble();
      v47 = [v48 initWithTimeIntervalSinceNow:?];
    }

    [v47 timeIntervalSinceNow];
    v50 = v49;
    GEOConfigGetDouble();
    if (v50 < v51)
    {
      v52 = [NSDate alloc];
      GEOConfigGetDouble();
      v53 = [v52 initWithTimeIntervalSinceNow:?];

      v47 = v53;
    }

    v54 = [v58 userActivity];
    v9 = [RideBookingRideOptionStatus statusWithApplication:v59 rideOptions:v60 expirationDate:v47 userActivity:v54 rideOptionStatusError:v46];
  }

  else
  {
    v9 = [RideBookingRideOptionStatus statusWithApplication:self error:4];
  }

  return v9;
}

- (id)_statusWithRideOption:(id)a3 requestRideIntent:(id)a4 requestRideEtaResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
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

  if (!v9)
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

  if ([v10 code] != 1 && objc_msgSend(v11, "code") != 3)
  {
    v20 = self;
    v21 = 3;
    goto LABEL_16;
  }

  if (!v11)
  {
    v20 = self;
    v21 = 2;
LABEL_16:
    v19 = [RideBookingRequestRideStatus statusWithApplication:v20 error:v21];
    goto LABEL_24;
  }

  v12 = [v11 rideStatus];
  v13 = [v12 estimatedPickupDate];
  v14 = [v13 copy];

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

  v22 = [v11 rideStatus];
  v23 = [v22 rideOption];

  v24 = [v23 name];
  if (![v24 length])
  {

    goto LABEL_22;
  }

  v25 = [v23 estimatedPickupDate];

  if (!v25)
  {
LABEL_22:
    v19 = [RideBookingRequestRideStatus statusWithApplication:self error:3];
    goto LABEL_23;
  }

  v26 = [v23 availablePartySizeOptions];
  v27 = [v23 priceRange];
  v42 = [(RideBookingApplication *)self _passengersChoiceFromAvailablePartySizeOptions:v26 optionPriceRange:v27];

  v28 = [RideBookingRideOption alloc];
  v29 = [v23 name];
  v30 = [v8 paymentMethods];
  [v23 estimatedPickupDate];
  v31 = v43 = v16;
  v32 = [(RideBookingRideOption *)v28 initWithApplication:self optionName:v29 paymentMethods:v30 estimatedPickupDate:v31 passengersChoice:v42];

  [(RideBookingRideOption *)v32 setIntentsRideOption:v23];
  v33 = [v9 pickupLocation];
  v34 = [v33 location];
  [v34 coordinate];
  v36 = v35;
  v38 = v37;
  v39 = [v9 pickupLocation];
  v40 = [v9 dropOffLocation];
  v19 = [RideBookingRequestRideStatus statusWithApplication:self rideOption:v32 startingWaypointCoordinate:v39 origin:v40 destination:0 loadingRequestRideStatus:v43 etaMinutesAtStartWaypoint:v36, v38];

  v16 = v43;
LABEL_23:

LABEL_24:

  return v19;
}

- (id)_statusWithRequestRideStatusIntentResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 code];
  if (v5 > 0xA)
  {
    v29 = 0;
  }

  else
  {
    v29 = qword_1012132F0[v5];
  }

  v6 = [v4 rideStatus];
  v7 = [v6 rideOption];

  v8 = [v4 rideStatus];
  v9 = [v7 availablePartySizeOptions];
  v10 = [v7 priceRange];
  v28 = [(RideBookingApplication *)self _passengersChoiceFromAvailablePartySizeOptions:v9 optionPriceRange:v10];

  v11 = [RideBookingRideOption alloc];
  v12 = [v7 name];
  v13 = [v7 estimatedPickupDate];
  v14 = [(RideBookingRideOption *)v11 initWithApplication:self optionName:v12 paymentMethods:&__NSArray0__struct estimatedPickupDate:v13 passengersChoice:v28];

  [(RideBookingRideOption *)v14 setIntentsRideOption:v7];
  v27 = [RideBookingRideStatus alloc];
  v15 = [v8 completionStatus];
  v26 = [v15 isCanceled];
  v16 = [v8 completionStatus];
  v17 = [v16 isCanceledByService];
  [v8 userActivityForCancelingInApplication];
  v19 = v18 = self;
  v20 = [v8 rideIdentifier];
  v21 = [v8 phase];
  if ((v21 - 1) >= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v23 = 3;
  if (v4)
  {
    v23 = v29;
  }

  v24 = [(RideBookingRideStatus *)v27 initWithApplication:v18 rideOption:v14 canceled:v26 canceledByService:v17 userActivityForCanceling:v19 identifier:v20 phase:v22 error:v23];

  [(RideBookingRideStatus *)v24 setIntentsRideStatus:v8];
  [(RideBookingRideStatus *)v24 setRequestRideIntentResponse:v4];

  return v24;
}

- (id)_statusWithGetRideStatusIntentResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 code];
  if (v5 > 7)
  {
    v29 = 0;
  }

  else
  {
    v29 = qword_1012132B0[v5];
  }

  v6 = [v4 rideStatus];
  v7 = [v6 rideOption];

  v8 = [v4 rideStatus];
  v9 = [v7 availablePartySizeOptions];
  v10 = [v7 priceRange];
  v28 = [(RideBookingApplication *)self _passengersChoiceFromAvailablePartySizeOptions:v9 optionPriceRange:v10];

  v11 = [RideBookingRideOption alloc];
  v12 = [v7 name];
  v13 = [v7 estimatedPickupDate];
  v14 = [(RideBookingRideOption *)v11 initWithApplication:self optionName:v12 paymentMethods:&__NSArray0__struct estimatedPickupDate:v13 passengersChoice:v28];

  [(RideBookingRideOption *)v14 setIntentsRideOption:v7];
  v27 = [RideBookingRideStatus alloc];
  v15 = [v8 completionStatus];
  v26 = [v15 isCanceled];
  v16 = [v8 completionStatus];
  v17 = [v16 isCanceledByService];
  [v8 userActivityForCancelingInApplication];
  v19 = v18 = self;
  v20 = [v8 rideIdentifier];
  v21 = [v8 phase];
  if ((v21 - 1) >= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v23 = 3;
  if (v4)
  {
    v23 = v29;
  }

  v24 = [(RideBookingRideStatus *)v27 initWithApplication:v18 rideOption:v14 canceled:v26 canceledByService:v17 userActivityForCanceling:v19 identifier:v20 phase:v22 error:v23];

  [(RideBookingRideStatus *)v24 setIntentsRideStatus:v8];
  [(RideBookingRideStatus *)v24 setGetRideStatusIntentResponse:v4];

  return v24;
}

- (id)_passengersChoiceFromAvailablePartySizeOptions:(id)a3 optionPriceRange:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006D5A74;
    v8[3] = &unk_101626C70;
    v9 = v5;
    a3 = sub_100021DB0(a3, v8);
  }

  return a3;
}

- (void)openWithActivity:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D5BC8;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)cancelRideWithRideStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [INCancelRideIntent alloc];
    v9 = [v6 identifier];
    v10 = [v8 initWithRideIdentifier:v9];

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v13 = [NSString alloc];
      v14 = [(RideBookingApplication *)self identifier];
      v15 = [v13 initWithFormat:@"%@ handling CancelRide: %@", v14, v10];
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
      v18 = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v27 = v18;
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
    v23 = v7;
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

- (void)checkIfCanCancelRideWithRideStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [INCancelRideIntent alloc];
    v9 = [v6 identifier];
    v10 = [v8 initWithRideIdentifier:v9];

    v11 = [(RideBookingApplication *)self _connectionWithIntent:v10];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v14 = [NSString alloc];
      v15 = [(RideBookingApplication *)self identifier];
      v16 = [v14 initWithFormat:@"%@ confirming CancelRide: %@", v15, v10];
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
      v18 = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v27 = v18;
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
    v23 = v7;
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

- (void)sendFeedbackForRideStatus:(id)a3 feedbackRating:(id)a4 feedbackTip:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = v10;
  if (v13)
  {
    v14 = [INSendRideFeedbackIntent alloc];
    v15 = [v10 identifier];
    v16 = [v14 initWithRideIdentifier:v15];

    if (v11)
    {
      [v16 setRating:v11];
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = [v16 rating];
      [v16 setRating:v17];

      if (!v12)
      {
LABEL_9:
        v22 = [(RideBookingApplication *)self _connectionWithIntent:v16];
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
          v25 = [NSString alloc];
          v26 = [(RideBookingApplication *)self identifier];
          v27 = [v25 initWithFormat:@"%@ handling SendRideFeeback: %@", v26, v16, v31];
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
          v29 = [(RideBookingApplication *)self uniqueName];
          *buf = 138412546;
          v37 = v29;
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
        v33 = v13;
        [v22 resumeWithCompletionHandler:v32];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);

        goto LABEL_16;
      }
    }

    v18 = [INCurrencyAmount alloc];
    v19 = [v12 amount];
    v20 = [v12 currencyCode];
    v21 = [v18 initWithAmount:v19 currencyCode:v20];
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

- (void)intentResponseDidUpdate:(id)a3 withSerializedCacheItems:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006D9580;
  v8[3] = &unk_101661480;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = self;
  v7 = v5;
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
    v6 = [(RideBookingApplication *)self identifier];
    v7 = [v5 initWithFormat:@"%@ stopping updates", v6];
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
    v12 = [(RideBookingApplication *)self identifier];
    v13 = [(INCExtensionConnection *)self->_getRideStatusConnection intent];
    [v13 _setLaunchId:v12];
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(RideBookingApplication *)self uniqueName];
    *buf = 138412546;
    v21 = v15;
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
    v6 = [(RideBookingApplication *)self identifier];
    v7 = [v5 initWithFormat:@"%@ starting updates", v6];
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
    v12 = [(RideBookingApplication *)self identifier];
    v13 = [(INCExtensionConnection *)self->_getRideStatusConnection intent];
    [v13 _setLaunchId:v12];
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(RideBookingApplication *)self uniqueName];
    *buf = 138412546;
    v21 = v15;
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

- (void)getRideStatusWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v7 = [NSString alloc];
      v8 = [(RideBookingApplication *)self identifier];
      v9 = [v7 initWithFormat:@"%@ handling GetRideStatus", v8];
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
      v13 = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v20 = v13;
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
    v16 = v4;
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

- (void)getRideStatusWithPickupLocation:(id)a3 dropOffLocation:(id)a4 rideOption:(id)a5 partySize:(unint64_t)a6 paymentMethod:(id)a7 completion:(id)a8
{
  v33 = a3;
  v34 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v32 = v14;
  if (v16)
  {
    v17 = [v14 name];
    v31 = [[INSpeakableString alloc] initWithVocabularyIdentifier:v17 spokenPhrase:v17 pronunciationHint:v17];
    v18 = [INRequestRideIntent alloc];
    v19 = [NSNumber numberWithUnsignedInteger:a6];
    v20 = [v15 intentsPaymentMethod];
    v21 = [v18 initWithPickupLocation:v33 dropOffLocation:v34 rideOptionName:v31 partySize:v19 paymentMethod:v20 scheduledPickupTime:0];

    v22 = [(RideBookingApplication *)self _connectionWithIntent:v21];
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v25 = [NSString alloc];
      v26 = [(RideBookingApplication *)self identifier];
      v27 = [v25 initWithFormat:@"%@ handling RequestRide: %@", v26, v21];
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
      v29 = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v40 = v29;
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
    v36 = v16;
    [v22 resumeWithCompletionHandler:v35];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v40 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v41 = 1024;
      *v42 = 278;
      *&v42[4] = 2082;
      *&v42[6] = "[RideBookingApplication getRideStatusWithPickupLocation:dropOffLocation:rideOption:partySize:paymentMethod:completion:]";
      v43 = 2082;
      v44 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)getRequestRideStatusWithPickupLocation:(id)a3 dropOffLocation:(id)a4 rideOption:(id)a5 completion:(id)a6
{
  v10 = a3;
  v27 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = [v11 name];
    v25 = [[INSpeakableString alloc] initWithVocabularyIdentifier:v13 spokenPhrase:v13 pronunciationHint:v13];
    v14 = [[INRequestRideIntent alloc] initWithPickupLocation:v10 dropOffLocation:v27 rideOptionName:v25 partySize:0 paymentMethod:0 scheduledPickupTime:0];
    v26 = [(RideBookingApplication *)self _connectionWithIntent:v14];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v17 = [NSString alloc];
      v18 = [(RideBookingApplication *)self identifier];
      v19 = [v17 initWithFormat:@"%@ confirming RequestRide: %@", v18, v14];
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
      v21 = [(RideBookingApplication *)self uniqueName];
      *buf = 138412546;
      v37 = v21;
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
    v33 = v12;
    v29 = v10;
    v23 = v14;
    v30 = v23;
    v31 = v11;
    v24 = v26;
    v32 = v24;
    [v24 resumeWithCompletionHandler:v28];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m";
      v38 = 1024;
      *v39 = 200;
      *&v39[4] = 2082;
      *&v39[6] = "[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:]";
      v40 = 2082;
      v41 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)getRideOptionStatusWithPickupLocation:(id)a3 dropOffLocation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v13 = [NSString alloc];
      v14 = [(RideBookingApplication *)self identifier];
      v15 = [v13 initWithFormat:@"%@ handling ListRideOptions", v14];
      *buf = 136315394;
      v35 = v12;
      v36 = 2112;
      *v37 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v16 = [(RideBookingApplication *)self identifier];
    v17 = isExtensionLocked();

    if (v17)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006DDCA8;
      block[3] = &unk_101660648;
      objc_copyWeak(&v32, &location);
      v31 = v10;
      dispatch_async(queue, block);

      objc_destroyWeak(&v32);
    }

    else
    {
      v20 = [[INListRideOptionsIntent alloc] initWithPickupLocation:v8 dropOffLocation:v9];
      v21 = [(RideBookingApplication *)self _connectionWithIntent:v20];
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [(RideBookingApplication *)self uniqueName];
        *buf = 138412546;
        v35 = v23;
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
      v28 = v10;
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

- (id)_connectionWithIntent:(id)a3
{
  v4 = a3;
  v5 = [(RideBookingApplication *)self identifier];
  [v4 _setLaunchId:v5];

  v6 = [[INCExtensionConnection alloc] initWithIntent:v4];
  [v6 setRequiresTCC:0];

  return v6;
}

- (NSString)name
{
  v3 = [(RideBookingApplication *)self identifier];

  if (!v3 || (-[RideBookingApplication identifier](self, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), +[LSBundleRecord bundleRecordWithBundleIdentifier:allowPlaceholder:error:](LSBundleRecord, "bundleRecordWithBundleIdentifier:allowPlaceholder:error:", v4, 0, 0), v5 = objc_claimAutoreleasedReturnValue(), v4, [v5 localizedName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "copy"), v6, v5, !v7))
  {
    v8 = [(RideBookingApplication *)self extension];
    v9 = [v8 displayName];
    v7 = [v9 copy];
  }

  return v7;
}

- (BOOL)enabled
{
  v2 = [(RideBookingApplication *)self extension];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)enableForUse
{
  v2 = [(RideBookingApplication *)self extension];
  [v2 _setEnabled:1 error:0];
}

- (NSString)description
{
  identifier = self->_identifier;
  v4 = [(RideBookingApplication *)self name];
  v5 = [NSString stringWithFormat:@"Pointer: %p, Identifier: %@, Name: %@", self, identifier, v4];

  return v5;
}

- (RideBookingApplication)initWithExtension:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = RideBookingApplication;
  v6 = [(RideBookingApplication *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, a3);
    v8 = [v5 _containingAppIdentifer];
    v9 = [v8 copy];
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

    v13 = [v12 bundleVersion];
    version = v7->_version;
    v7->_version = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("RideBookingApplication", v15);
    queue = v7->_queue;
    v7->_queue = v16;

    v18 = MapsSuggestionsResourceDepotForMapsProcess();
    v19 = [v18 oneAppGuardian];
    appGuardian = v7->_appGuardian;
    v7->_appGuardian = v19;

    [(MapsSuggestionsAppGuardian *)v7->_appGuardian registerAppTracker:v7];
  }

  return v7;
}

- (id)iconWithFormat:(int)a3
{
  v3 = *&a3;
  v4 = [(RideBookingApplication *)self extension];
  v5 = [v4 _iconWithFormat:v3];

  return v5;
}

@end