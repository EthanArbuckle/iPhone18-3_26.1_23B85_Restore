@interface _MKPlaceReservationInfo
- (_MKPlaceReservationDelegate)reservationDelegate;
- (_MKPlaceReservationInfo)initWithOpenTimes:(id)times attributionProviderName:(id)name providerLogoImage:(id)image delegate:(id)delegate;
@end

@implementation _MKPlaceReservationInfo

- (_MKPlaceReservationDelegate)reservationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reservationDelegate);

  return WeakRetained;
}

- (_MKPlaceReservationInfo)initWithOpenTimes:(id)times attributionProviderName:(id)name providerLogoImage:(id)image delegate:(id)delegate
{
  timesCopy = times;
  nameCopy = name;
  imageCopy = image;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = _MKPlaceReservationInfo;
  v14 = [(_MKPlaceReservationInfo *)&v20 init];
  if (v14)
  {
    v15 = [timesCopy copy];
    openTimes = v14->_openTimes;
    v14->_openTimes = v15;

    v17 = [nameCopy copy];
    attributionProviderDisplayName = v14->_attributionProviderDisplayName;
    v14->_attributionProviderDisplayName = v17;

    objc_storeStrong(&v14->_attributionProviderLogoImage, image);
    objc_storeWeak(&v14->_reservationDelegate, delegateCopy);
  }

  return v14;
}

@end