@interface _MKPlaceReservationInfo
- (_MKPlaceReservationDelegate)reservationDelegate;
- (_MKPlaceReservationInfo)initWithOpenTimes:(id)a3 attributionProviderName:(id)a4 providerLogoImage:(id)a5 delegate:(id)a6;
@end

@implementation _MKPlaceReservationInfo

- (_MKPlaceReservationDelegate)reservationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reservationDelegate);

  return WeakRetained;
}

- (_MKPlaceReservationInfo)initWithOpenTimes:(id)a3 attributionProviderName:(id)a4 providerLogoImage:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = _MKPlaceReservationInfo;
  v14 = [(_MKPlaceReservationInfo *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    openTimes = v14->_openTimes;
    v14->_openTimes = v15;

    v17 = [v11 copy];
    attributionProviderDisplayName = v14->_attributionProviderDisplayName;
    v14->_attributionProviderDisplayName = v17;

    objc_storeStrong(&v14->_attributionProviderLogoImage, a5);
    objc_storeWeak(&v14->_reservationDelegate, v13);
  }

  return v14;
}

@end