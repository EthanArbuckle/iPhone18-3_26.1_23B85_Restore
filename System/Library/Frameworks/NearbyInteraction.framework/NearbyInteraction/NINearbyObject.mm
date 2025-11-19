@interface NINearbyObject
+ (id)fauxObjectWithDiscoveryToken:(id)a3 name:(id)a4 deviceIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NINearbyObject)initWithCoder:(id)a3;
- (NINearbyObject)initWithNearbyObject:(id)a3;
- (NINearbyObject)initWithToken:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NINearbyObject

- (NINearbyObject)initWithToken:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"NINearbyObject.mm" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v26.receiver = self;
  v26.super_class = NINearbyObject;
  v7 = [(NINearbyObject *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_discoveryToken, a3);
    v8->_distance = NINearbyObjectDistanceNotAvailable;
    v9 = NINearbyObjectDirectionNotAvailable;
    v8->_distanceMeasurementQuality = 0;
    v10 = NINearbyObjectElevationNotAvailable;
    LODWORD(v8->_azimuth) = NINearbyObjectAzimuthNotAvailable;
    LODWORD(v8->_elevation) = v10;
    v11 = NINearbyObjectQuaternionNotAvailable;
    *v8->_direction = v9;
    *v8->_anon_e0 = v11;
    *&v8->_timestamp = NINearbyObjectMachContTimeNotAvailable;
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_relationship = 4;
    v8->_deviceIdentifier = 0;

    v8->_motionState = 0;
    v8->_verticalDirectionEstimate = 0;
    v13 = NINearbyObjectAngleNotAvailable;
    v8->_horizontalAngle = NINearbyObjectAngleNotAvailable;
    v8->_horizontalAngleAccuracy = v13;
    v8->_horizontalDistance = NINearbyObjectDistanceNotAvailable;
    location = v8->_location;
    v8->_itemState = 5;
    v8->_location = 0;

    name = v8->_name;
    v8->_name = 0;

    spatialScore = v8->_spatialScore;
    v8->_spatialScore = 0;

    bluetoothAdvertisingAddress = v8->_bluetoothAdvertisingAddress;
    v8->_bluetoothAdvertisingAddress = 0;

    bluetoothPeerIdentifier = v8->_bluetoothPeerIdentifier;
    v8->_bluetoothPeerIdentifier = 0;

    v19 = NINearbyObjectSignalStrengthNotAvailable;
    v8->_remoteTxAntennaMask = NINearbyObjectRemoteTxAntennaMaskNotAvailable;
    v20 = NINearbyObjectRangeBiasEstimateNotAvailable;
    *&v8->_signalStrength = v19;
    *&v8->_rangeBiasEstimate = v20;
    *&v8->_rangeUncertainty = NINearbyObjectRangeUncertaintyNotAvailable;
    *v8->_worldPosition = NINearbyObjectWorldPositionNotAvailable;
    v8->_requiresBiasCorrection = NINearbyObjectBiasCorrectionNotRequired;
    uwbSignalFeatures = v8->_uwbSignalFeatures;
    v8->_uwbSignalFeatures = 0;

    v22 = NINearbyObjectRxStatusNotAvailable;
    v8->_nbRxStatus = NINearbyObjectRxStatusNotAvailable;
    v8->_mmsRxStatus = v22;
    *&v8->_nbRssi = NINearbyObjectNbRssiNotAvailable;
    *&v8->_canInteract = 1;
    v8->_revokeFindingExperience = 0;
    LODWORD(v8->_boundedRegionRange) = NINearbyObjectRegionBoundaryRangeNotAvailable;
    debugDisplayInfo = v8->_debugDisplayInfo;
    v8->_algorithmSource = 1;
    v8->_debugDisplayInfo = 0;
  }

  return v8;
}

- (NINearbyObject)initWithNearbyObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"NINearbyObject.mm" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v43.receiver = self;
  v43.super_class = NINearbyObject;
  v6 = [(NINearbyObject *)&v43 init];
  if (v6)
  {
    v7 = [v5 discoveryToken];
    discoveryToken = v6->_discoveryToken;
    v6->_discoveryToken = v7;

    [v5 distance];
    v6->_distance = v9;
    [v5 direction];
    *v6->_direction = v10;
    v6->_distanceMeasurementQuality = [v5 distanceMeasurementQuality];
    [v5 azimuth];
    v6->_azimuth = v11;
    [v5 elevation];
    v6->_elevation = v12;
    [v5 quaternion];
    *v6->_anon_e0 = v13;
    v6->_relationship = [v5 relationship];
    v14 = [v5 deviceIdentifier];
    deviceIdentifier = v6->_deviceIdentifier;
    v6->_deviceIdentifier = v14;

    [v5 timestamp];
    v6->_timestamp = v16;
    v6->_motionState = [v5 motionState];
    v17 = [v5 name];
    name = v6->_name;
    v6->_name = v17;

    v6->_verticalDirectionEstimate = [v5 verticalDirectionEstimate];
    [v5 horizontalAngle];
    v6->_horizontalAngle = v19;
    [v5 horizontalAngleAccuracy];
    v6->_horizontalAngleAccuracy = v20;
    [v5 horizontalDistance];
    v6->_horizontalDistance = v21;
    v6->_itemState = [v5 itemState];
    v22 = [v5 location];
    v23 = [v22 copy];
    location = v6->_location;
    v6->_location = v23;

    v25 = [v5 spatialScore];
    spatialScore = v6->_spatialScore;
    v6->_spatialScore = v25;

    v27 = [v5 bluetoothAdvertisingAddress];
    bluetoothAdvertisingAddress = v6->_bluetoothAdvertisingAddress;
    v6->_bluetoothAdvertisingAddress = v27;

    v29 = [v5 bluetoothPeerIdentifier];
    bluetoothPeerIdentifier = v6->_bluetoothPeerIdentifier;
    v6->_bluetoothPeerIdentifier = v29;

    [v5 signalStrength];
    v6->_signalStrength = v31;
    v6->_remoteTxAntennaMask = [v5 remoteTxAntennaMask];
    [v5 rangeBiasEstimate];
    v6->_rangeBiasEstimate = v32;
    [v5 rangeUncertainty];
    v6->_rangeUncertainty = v33;
    [v5 worldPosition];
    *v6->_worldPosition = v34;
    v6->_requiresBiasCorrection = [v5 requiresBiasCorrection];
    v35 = [v5 uwbSignalFeatures];
    uwbSignalFeatures = v6->_uwbSignalFeatures;
    v6->_uwbSignalFeatures = v35;

    v6->_nbRxStatus = [v5 nbRxStatus];
    v6->_mmsRxStatus = [v5 mmsRxStatus];
    [v5 nbRssi];
    v6->_nbRssi = v37;
    v6->_canInteract = [v5 canInteract];
    v6->_resetARSession = [v5 resetARSession];
    v6->_revokeFindingExperience = [v5 revokeFindingExperience];
    [v5 boundedRegionRange];
    v6->_boundedRegionRange = v38;
    v6->_algorithmSource = [v5 algorithmSource];
    v39 = [v5 debugDisplayInfo];
    debugDisplayInfo = v6->_debugDisplayInfo;
    v6->_debugDisplayInfo = v39;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithNearbyObject:self];
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeObject:self->_discoveryToken forKey:@"discoveryToken"];
  *&v4 = self->_distance;
  [v11 encodeFloat:@"distance" forKey:v4];
  [v11 encodeVector3:@"direction" forKey:*self->_direction];
  *&v5 = self->_azimuth;
  [v11 encodeFloat:@"azimuth" forKey:v5];
  *&v6 = self->_elevation;
  [v11 encodeFloat:@"elevation" forKey:v6];
  [v11 encodeQuat:@"quaternion" forKey:*self->_anon_e0];
  [v11 encodeInteger:self->_relationship forKey:@"relationship"];
  [v11 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v11 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v11 encodeInteger:self->_distanceMeasurementQuality forKey:@"measurementQuality"];
  [v11 encodeInteger:self->_motionState forKey:@"motionState"];
  [v11 encodeObject:self->_name forKey:@"name"];
  [v11 encodeInteger:self->_verticalDirectionEstimate forKey:@"verticalDirectionEstimate"];
  *&v7 = self->_horizontalAngle;
  [v11 encodeFloat:@"horizontalAngle" forKey:v7];
  *&v8 = self->_horizontalAngleAccuracy;
  [v11 encodeFloat:@"horizontalAngleAccuracy" forKey:v8];
  *&v9 = self->_horizontalDistance;
  [v11 encodeFloat:@"horizontalDistance" forKey:v9];
  [v11 encodeInteger:self->_itemState forKey:@"itemState"];
  [v11 encodeObject:self->_spatialScore forKey:@"spatialScore"];
  [v11 encodeObject:self->_bluetoothAdvertisingAddress forKey:@"bluetoothAdvertisingAddress"];
  [v11 encodeObject:self->_bluetoothPeerIdentifier forKey:@"bluetoothPeerIdentifier"];
  [v11 encodeObject:self->_location forKey:@"location"];
  [v11 encodeDouble:@"signalStrength" forKey:self->_signalStrength];
  [v11 encodeInteger:self->_remoteTxAntennaMask forKey:@"remoteTxAntennaMask"];
  [v11 encodeDouble:@"rangeBiasEstimate" forKey:self->_rangeBiasEstimate];
  [v11 encodeDouble:@"rangeUncertainty" forKey:self->_rangeUncertainty];
  [v11 encodeVector3:@"worldPosition" forKey:*self->_worldPosition];
  [v11 encodeBool:self->_requiresBiasCorrection forKey:@"requiresBiasCorrection"];
  [v11 encodeObject:self->_uwbSignalFeatures forKey:@"uwbSignalFeatures"];
  [v11 encodeInteger:self->_nbRxStatus forKey:@"nbRxStatus"];
  [v11 encodeInteger:self->_mmsRxStatus forKey:@"mmsRxStatus"];
  [v11 encodeDouble:@"nbRssi" forKey:self->_nbRssi];
  [v11 encodeBool:self->_canInteract forKey:@"canInteract"];
  [v11 encodeBool:self->_resetARSession forKey:@"resetARSession"];
  [v11 encodeBool:self->_revokeFindingExperience forKey:@"revokeFindingExperience"];
  *&v10 = self->_boundedRegionRange;
  [v11 encodeFloat:@"boundedRegionRange" forKey:v10];
  [v11 encodeInteger:self->_algorithmSource forKey:@"algorithmSource"];
  [v11 encodeObject:self->_debugDisplayInfo forKey:@"debugDisplayInfo"];
}

- (NINearbyObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveryToken"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 decodeFloatForKey:@"distance"];
    v56 = v6;
    [v4 decodeVector3ForKey:@"direction"];
    v55 = v7;
    [v4 decodeFloatForKey:@"azimuth"];
    v54 = v8;
    [v4 decodeFloatForKey:@"elevation"];
    v53 = v9;
    [v4 decodeQuatForKey:@"quaternion"];
    v52 = v10;
    obj = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v11 = [v4 decodeIntegerForKey:@"relationship"];
    [v4 decodeDoubleForKey:@"timestamp"];
    v51 = v12;
    v13 = [v4 decodeIntegerForKey:@"measurementQuality"];
    v14 = [v4 decodeIntegerForKey:@"motionState"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spatialScore"];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothAdvertisingAddress"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothPeerIdentifier"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v50 = [v4 decodeIntegerForKey:@"verticalDirectionEstimate"];
    [v4 decodeFloatForKey:@"horizontalAngle"];
    v19 = v18;
    [v4 decodeFloatForKey:@"horizontalAngleAccuracy"];
    v21 = v20;
    [v4 decodeFloatForKey:@"horizontalDistance"];
    v23 = v22;
    v49 = [v4 decodeIntegerForKey:@"itemState"];
    [v4 decodeDoubleForKey:@"signalStrength"];
    v25 = v24;
    v48 = [v4 decodeIntForKey:@"remoteTxAntennaMask"];
    [v4 decodeDoubleForKey:@"rangeBiasEstimate"];
    v27 = v26;
    [v4 decodeDoubleForKey:@"rangeUncertainty"];
    v29 = v28;
    [v4 decodeVector3ForKey:@"worldPosition"];
    v47 = v30;
    v46 = [v4 decodeBoolForKey:@"requiresBiasCorrection"];
    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uwbSignalFeatures"];
    v45 = [v4 decodeIntForKey:@"nbRxStatus"];
    v44 = [v4 decodeIntForKey:@"mmsRxStatus"];
    [v4 decodeDoubleForKey:@"nbRssi"];
    v32 = v31;
    v43 = [v4 decodeBoolForKey:@"canInteract"];
    v42 = [v4 decodeBoolForKey:@"resetARSession"];
    v41 = [v4 decodeBoolForKey:@"revokeFindingExperience"];
    [v4 decodeFloatForKey:@"boundedRegionRange"];
    v34 = v33;
    v40 = [v4 decodeIntegerForKey:@"algorithmSource"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"debugDisplayInfo"];
    v61.receiver = self;
    v61.super_class = NINearbyObject;
    v36 = [(NINearbyObject *)&v61 init];
    v37 = v36;
    if (v36)
    {
      objc_storeStrong(&v36->_discoveryToken, v5);
      v37->_distance = v56;
      v37->_azimuth = v54;
      v37->_elevation = v53;
      *v37->_direction = v55;
      *v37->_anon_e0 = v52;
      v37->_relationship = v11;
      objc_storeStrong(&v37->_deviceIdentifier, obj);
      v37->_timestamp = v51;
      v37->_distanceMeasurementQuality = v13;
      v37->_motionState = v14;
      objc_storeStrong(&v37->_name, v15);
      v37->_verticalDirectionEstimate = v50;
      v37->_horizontalAngle = v19;
      v37->_horizontalAngleAccuracy = v21;
      v37->_horizontalDistance = v23;
      v37->_itemState = v49;
      objc_storeStrong(&v37->_spatialScore, v59);
      objc_storeStrong(&v37->_bluetoothAdvertisingAddress, v58);
      objc_storeStrong(&v37->_bluetoothPeerIdentifier, v16);
      objc_storeStrong(&v37->_location, v17);
      v37->_remoteTxAntennaMask = v48;
      v37->_signalStrength = v25;
      v37->_rangeBiasEstimate = v27;
      v37->_rangeUncertainty = v29;
      *v37->_worldPosition = v47;
      v37->_requiresBiasCorrection = v46;
      objc_storeStrong(&v37->_uwbSignalFeatures, v57);
      v37->_nbRxStatus = v45;
      v37->_mmsRxStatus = v44;
      v37->_nbRssi = v32;
      v37->_canInteract = v43;
      v37->_resetARSession = v42;
      v37->_revokeFindingExperience = v41;
      v37->_boundedRegionRange = v34;
      v37->_algorithmSource = v40;
      objc_storeStrong(&v37->_debugDisplayInfo, v35);
    }

    self = v37;

    v38 = self;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v81 = 1;
LABEL_63:

      goto LABEL_64;
    }

    discoveryToken = self->_discoveryToken;
    v127 = v4;
    if (!discoveryToken)
    {
      v8 = [(NINearbyObject *)v5 discoveryToken];

      if (!v8)
      {
        v11 = 0;
LABEL_7:
        deviceIdentifier = self->_deviceIdentifier;
        if (!deviceIdentifier)
        {
          v13 = [(NINearbyObject *)v6 deviceIdentifier];

          if (!v13)
          {
            v16 = 0;
LABEL_11:
            distance = self->_distance;
            [(NINearbyObject *)v6 distance];
            v19 = v18;
            v126 = *self->_direction;
            [(NINearbyObject *)v6 direction];
            v125 = v20;
            distanceMeasurementQuality = self->_distanceMeasurementQuality;
            v22 = [(NINearbyObject *)v6 distanceMeasurementQuality];
            relationship = self->_relationship;
            v24 = [(NINearbyObject *)v6 relationship];
            timestamp = self->_timestamp;
            [(NINearbyObject *)v6 timestamp];
            v27 = v26;
            motionState = self->_motionState;
            v123 = [(NINearbyObject *)v6 motionState];
            signalStrength = self->_signalStrength;
            [(NINearbyObject *)v6 signalStrength];
            v30 = v29;
            remoteTxAntennaMask = self->_remoteTxAntennaMask;
            v121 = [(NINearbyObject *)v6 remoteTxAntennaMask];
            rangeBiasEstimate = self->_rangeBiasEstimate;
            [(NINearbyObject *)v6 rangeBiasEstimate];
            v33 = v32;
            v118 = v24;
            v119 = relationship;
            v120 = v22;
            rangeUncertainty = self->_rangeUncertainty;
            [(NINearbyObject *)v6 rangeUncertainty];
            v116 = v34;
            name = self->_name;
            if (!name)
            {
              v36 = [(NINearbyObject *)v6 name];

              if (!v36)
              {
                goto LABEL_15;
              }

              name = self->_name;
            }

            v37 = [(NINearbyObject *)v6 name];
            v38 = [(NSString *)name isEqualToString:v37];

            LOBYTE(v36) = !v38;
LABEL_15:
            verticalDirectionEstimate = self->_verticalDirectionEstimate;
            v40 = [(NINearbyObject *)v6 verticalDirectionEstimate];
            horizontalAngle = self->_horizontalAngle;
            [(NINearbyObject *)v6 horizontalAngle];
            v114 = v41;
            horizontalAngleAccuracy = self->_horizontalAngleAccuracy;
            [(NINearbyObject *)v6 horizontalAngleAccuracy];
            v112 = v42;
            horizontalDistance = self->_horizontalDistance;
            [(NINearbyObject *)v6 horizontalDistance];
            v110 = v43;
            v107 = v40;
            v108 = verticalDirectionEstimate;
            v109 = v36;
            itemState = self->_itemState;
            v105 = [(NINearbyObject *)v6 itemState];
            spatialScore = self->_spatialScore;
            if (!spatialScore)
            {
              v45 = [(NINearbyObject *)v6 spatialScore];

              if (!v45)
              {
                v104 = 0;
LABEL_19:
                bluetoothAdvertisingAddress = self->_bluetoothAdvertisingAddress;
                if (!bluetoothAdvertisingAddress)
                {
                  v49 = [(NINearbyObject *)v6 bluetoothAdvertisingAddress];

                  if (!v49)
                  {
                    v103 = 0;
LABEL_23:
                    bluetoothPeerIdentifier = self->_bluetoothPeerIdentifier;
                    if (!bluetoothPeerIdentifier)
                    {
                      v53 = [(NINearbyObject *)v6 bluetoothPeerIdentifier];

                      if (!v53)
                      {
                        v102 = 0;
LABEL_27:
                        location = self->_location;
                        if (!location)
                        {
                          v57 = [(NINearbyObject *)v6 location];

                          if (!v57)
                          {
                            goto LABEL_31;
                          }

                          location = self->_location;
                        }

                        v58 = [(NINearbyObject *)v6 location];
                        v59 = [(NILocation *)location isEqual:v58];

                        LOBYTE(v57) = !v59;
LABEL_31:
                        v101 = *self->_worldPosition;
                        [(NINearbyObject *)v6 worldPosition];
                        v100 = v60;
                        requiresBiasCorrection = self->_requiresBiasCorrection;
                        v99 = v57;
                        v97 = [(NINearbyObject *)v6 requiresBiasCorrection];
                        uwbSignalFeatures = self->_uwbSignalFeatures;
                        v96 = distanceMeasurementQuality;
                        if (!uwbSignalFeatures)
                        {
                          v62 = [(NINearbyObject *)v6 uwbSignalFeatures];

                          if (!v62)
                          {
                            v65 = 0;
LABEL_35:
                            nbRxStatus = self->_nbRxStatus;
                            v67 = [(NINearbyObject *)v6 nbRxStatus];
                            mmsRxStatus = self->_mmsRxStatus;
                            v94 = [(NINearbyObject *)v6 mmsRxStatus];
                            nbRssi = self->_nbRssi;
                            [(NINearbyObject *)v6 nbRssi];
                            v92 = v68;
                            canInteract = self->_canInteract;
                            v90 = [(NINearbyObject *)v6 canInteract];
                            resetARSession = self->_resetARSession;
                            v88 = [(NINearbyObject *)v6 resetARSession];
                            revokeFindingExperience = self->_revokeFindingExperience;
                            v86 = [(NINearbyObject *)v6 revokeFindingExperience];
                            boundedRegionRange = self->_boundedRegionRange;
                            [(NINearbyObject *)v6 boundedRegionRange];
                            v84 = v69;
                            algorithmSource = self->_algorithmSource;
                            v70 = [(NINearbyObject *)v6 algorithmSource];
                            debugDisplayInfo = self->_debugDisplayInfo;
                            if (!debugDisplayInfo)
                            {
                              v72 = [(NINearbyObject *)v6 debugDisplayInfo];

                              if (!v72)
                              {
                                v74 = 1;
                                goto LABEL_39;
                              }

                              debugDisplayInfo = self->_debugDisplayInfo;
                            }

                            v73 = [(NINearbyObject *)v6 debugDisplayInfo];
                            v74 = [(NSString *)debugDisplayInfo isEqualToString:v73];

LABEL_39:
                            v75 = vceqq_f32(v101, v100);
                            v75.i32[3] = v75.i32[2];
                            v76 = (vminvq_u32(v75) & 0x80000000) == 0;
                            v77 = vceqq_f32(v126, v125);
                            v77.i32[3] = v77.i32[2];
                            v78 = vminvq_u32(v77);
                            if (distance == v19)
                            {
                              v79 = v11;
                            }

                            else
                            {
                              v79 = 1;
                            }

                            if (v78 >= 0)
                            {
                              v79 = 1;
                            }

                            if (v96 != v120)
                            {
                              v79 = 1;
                            }

                            v80 = (nbRxStatus == v67) & ~(v79 | (v16 || v119 != v118 || timestamp != v27 || motionState != v123) | v109 | (v108 != v107) | (horizontalAngle != v114) | (horizontalAngleAccuracy != v112) | (horizontalDistance != v110) | (itemState != v105) | v104 | v103 | v102 | v99 | (signalStrength != v30) | (remoteTxAntennaMask != v121) | v76 | (requiresBiasCorrection != v97) | (rangeUncertainty != v116 || rangeBiasEstimate != v33 || v65));
                            if (mmsRxStatus != v94)
                            {
                              v80 = 0;
                            }

                            if (nbRssi != v92)
                            {
                              v80 = 0;
                            }

                            if (canInteract != v90)
                            {
                              v80 = 0;
                            }

                            if (resetARSession != v88)
                            {
                              v80 = 0;
                            }

                            if (revokeFindingExperience != v86)
                            {
                              v80 = 0;
                            }

                            if (boundedRegionRange != v84)
                            {
                              v80 = 0;
                            }

                            if (algorithmSource != v70)
                            {
                              v80 = 0;
                            }

                            v81 = v80 & v74;
                            v4 = v127;
                            goto LABEL_63;
                          }

                          uwbSignalFeatures = self->_uwbSignalFeatures;
                        }

                        v63 = [(NINearbyObject *)v6 uwbSignalFeatures];
                        v64 = [(UWBSignalFeatures *)uwbSignalFeatures isEqual:v63];

                        v65 = !v64;
                        goto LABEL_35;
                      }

                      bluetoothPeerIdentifier = self->_bluetoothPeerIdentifier;
                    }

                    v54 = [(NINearbyObject *)v6 bluetoothPeerIdentifier];
                    v55 = [(NSUUID *)bluetoothPeerIdentifier isEqual:v54];

                    v102 = v55 ^ 1;
                    goto LABEL_27;
                  }

                  bluetoothAdvertisingAddress = self->_bluetoothAdvertisingAddress;
                }

                v50 = [(NINearbyObject *)v6 bluetoothAdvertisingAddress];
                v51 = [(NSData *)bluetoothAdvertisingAddress isEqualToData:v50];

                v103 = !v51;
                goto LABEL_23;
              }

              spatialScore = self->_spatialScore;
            }

            v46 = [(NINearbyObject *)v6 spatialScore];
            v47 = [(NSNumber *)spatialScore isEqualToNumber:v46];

            v104 = !v47;
            goto LABEL_19;
          }

          deviceIdentifier = self->_deviceIdentifier;
        }

        v14 = [(NINearbyObject *)v6 deviceIdentifier];
        v15 = [(NSString *)deviceIdentifier isEqualToString:v14];

        v16 = !v15;
        goto LABEL_11;
      }

      discoveryToken = self->_discoveryToken;
    }

    v9 = [(NINearbyObject *)v6 discoveryToken];
    v10 = [(NIDiscoveryToken *)discoveryToken isEqual:v9];

    v11 = !v10;
    goto LABEL_7;
  }

  v81 = 0;
LABEL_64:

  return v81;
}

- (unint64_t)hash
{
  discoveryToken = self->_discoveryToken;
  if (discoveryToken)
  {
    v71 = [(NIDiscoveryToken *)discoveryToken hash];
  }

  else
  {
    v71 = 0;
  }

  distance = self->_distance;
  v6 = NINearbyObjectDistanceNotAvailable;
  if (distance == NINearbyObjectDistanceNotAvailable)
  {
    v70 = 0;
  }

  else
  {
    *&v2 = self->_distance;
    v36 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
    v70 = [v36 hash];
  }

  v7 = *self->_direction;
  v8 = vceqq_f32(NINearbyObjectDirectionNotAvailable, v7);
  v8.i32[3] = v8.i32[2];
  if ((vminvq_u32(v8) & 0x80000000) != 0)
  {
    HashFromSimdFloat3 = 0;
  }

  else
  {
    HashFromSimdFloat3 = extractHashFromSimdFloat3(v7);
  }

  timestamp = self->_timestamp;
  v10 = NINearbyObjectMachContTimeNotAvailable;
  v80 = v6;
  if (timestamp == *&NINearbyObjectMachContTimeNotAvailable)
  {
    v68 = 0;
  }

  else
  {
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
    v68 = [v35 hash];
  }

  v78 = [MEMORY[0x1E696AD98] numberWithInteger:self->_distanceMeasurementQuality];
  v79 = *&v10;
  v67 = [v78 hash];
  v77 = [MEMORY[0x1E696AD98] numberWithInteger:self->_motionState];
  v65 = [v77 hash];
  v76 = [MEMORY[0x1E696AD98] numberWithInteger:self->_relationship];
  v64 = [v76 hash];
  v62 = [(NSString *)self->_deviceIdentifier hash];
  v61 = [(NSString *)self->_name hash];
  v75 = [MEMORY[0x1E696AD98] numberWithInteger:self->_verticalDirectionEstimate];
  v60 = [v75 hash];
  horizontalAngle = self->_horizontalAngle;
  v13 = NINearbyObjectAngleNotAvailable;
  if (horizontalAngle == NINearbyObjectAngleNotAvailable)
  {
    v58 = 0;
  }

  else
  {
    *&v11 = self->_horizontalAngle;
    v34 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v58 = [v34 hash];
  }

  v14 = NINearbyObjectAngleNotAvailable;
  horizontalAngleAccuracy = self->_horizontalAngleAccuracy;
  if (horizontalAngleAccuracy == NINearbyObjectAngleNotAvailable)
  {
    v57 = 0;
  }

  else
  {
    *&v11 = self->_horizontalAngleAccuracy;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v57 = [v33 hash];
  }

  horizontalDistance = self->_horizontalDistance;
  v17 = NINearbyObjectDistanceNotAvailable;
  if (horizontalDistance == NINearbyObjectDistanceNotAvailable)
  {
    v56 = 0;
  }

  else
  {
    *&v11 = self->_horizontalDistance;
    v32 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v56 = [v32 hash];
  }

  v74 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemState];
  v55 = [v74 hash];
  v54 = [(NSNumber *)self->_spatialScore hash];
  v52 = [(NSData *)self->_bluetoothAdvertisingAddress hash];
  v51 = [(NSUUID *)self->_bluetoothPeerIdentifier hash];
  v50 = [(NILocation *)self->_location hash];
  v73 = [MEMORY[0x1E696AD98] numberWithDouble:self->_signalStrength];
  v49 = [v73 hash];
  v72 = [MEMORY[0x1E696AD98] numberWithInt:self->_remoteTxAntennaMask];
  v48 = [v72 hash];
  v66 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rangeBiasEstimate];
  v47 = [v66 hash];
  v63 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rangeUncertainty];
  v46 = [v63 hash];
  v18 = *self->_worldPosition;
  v19 = vceqq_f32(NINearbyObjectWorldPositionNotAvailable, v18);
  v19.i32[3] = v19.i32[2];
  if ((vminvq_u32(v19) & 0x80000000) != 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = extractHashFromSimdFloat3(v18);
  }

  v59 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresBiasCorrection];
  v44 = [v59 hash];
  v43 = [(UWBSignalFeatures *)self->_uwbSignalFeatures hash];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:self->_nbRxStatus];
  v42 = [v53 hash];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:self->_mmsRxStatus];
  v41 = [v20 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_nbRssi];
  v40 = [v21 hash];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_canInteract];
  v39 = [v22 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_resetARSession];
  v38 = [v23 hash];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_revokeFindingExperience];
  v37 = [v24 hash];
  *&v25 = self->_boundedRegionRange;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v27 = [v26 hash];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:self->_algorithmSource];
  v29 = [v28 hash];
  v30 = [(NSString *)self->_debugDisplayInfo hash];

  if (horizontalDistance != v17)
  {
  }

  if (horizontalAngleAccuracy != v14)
  {
  }

  if (horizontalAngle != v13)
  {
  }

  if (timestamp != v79)
  {
  }

  if (distance != v80)
  {
  }

  return v70 ^ v71 ^ HashFromSimdFloat3 ^ v68 ^ v67 ^ v65 ^ v64 ^ v62 ^ v61 ^ v60 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v27 ^ v29 ^ v30;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  discoveryToken = self->_discoveryToken;
  if (discoveryToken)
  {
    v8 = [(NIDiscoveryToken *)discoveryToken descriptionInternal];
    [v6 appendFormat:@"Token: %@", v8];
  }

  else
  {
    [v6 appendString:@"Token: null"];
  }

  distance = self->_distance;
  if (distance == NINearbyObjectDistanceNotAvailable)
  {
    [v6 appendString:{@", Distance not available"}];
  }

  else
  {
    [v6 appendFormat:@", Distance: %.2fm", distance];
  }

  v10 = *self->_direction;
  v11 = vceqq_f32(v10, NINearbyObjectDirectionNotAvailable);
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) != 0)
  {
    [v6 appendString:{@", Direction not available"}];
  }

  else
  {
    [v6 appendFormat:@", Direction: (%.3f, %.3f, %.3f)", v10.f32[0], v10.f32[1], v10.f32[2]];
  }

  horizontalAngle = self->_horizontalAngle;
  if (horizontalAngle == NINearbyObjectAngleNotAvailable)
  {
    [v6 appendFormat:@", Horizontal Angle: %.2frad", horizontalAngle];
  }

  else
  {
    [v6 appendString:{@", Horizontal Angle not available"}];
  }

  verticalDirectionEstimate = self->_verticalDirectionEstimate;
  if (verticalDirectionEstimate >= 5)
  {
    __assert_rtn("NINearbyObjectVerticalDirectionEstimateToString", "NINearbyObject.mm", 79, "false");
  }

  [v6 appendFormat:@", Vertical Direction Estimate: %@ ", off_1E7F14140[verticalDirectionEstimate]];
  [v6 appendString:@">"];

  return v6;
}

- (id)descriptionInternal
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  v7 = [(NINearbyObject *)self description];
  [v6 appendString:v7];

  v8 = [(NINearbyObject *)self deviceIdentifer];
  [v6 appendFormat:@", deviceIdentifier: %@", v8];

  horizontalAngleAccuracy = self->_horizontalAngleAccuracy;
  v10 = NINearbyObjectAngleNotAvailable;
  if (horizontalAngleAccuracy == NINearbyObjectAngleNotAvailable)
  {
    v11 = @"-";
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2frad", horizontalAngleAccuracy];
  }

  [v6 appendFormat:@", HorizAngleAcc: %@", v11];
  if (horizontalAngleAccuracy != v10)
  {
  }

  horizontalDistance = self->_horizontalDistance;
  v13 = NINearbyObjectDistanceNotAvailable;
  if (horizontalDistance == NINearbyObjectDistanceNotAvailable)
  {
    v14 = @"-";
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2fm", horizontalDistance];
  }

  [v6 appendFormat:@", Horiz Distance: %@", v14];
  if (horizontalDistance != v13)
  {
  }

  itemState = self->_itemState;
  if (itemState > 5)
  {
    v45 = 99;
    v46 = "NIItemStateToString";
    goto LABEL_64;
  }

  [v6 appendFormat:@", Item State: %@", off_1E7F14168[itemState]];
  distanceMeasurementQuality = self->_distanceMeasurementQuality;
  if (distanceMeasurementQuality > 3)
  {
    v45 = 47;
    v46 = "NIDistanceMeasurementQualityToString";
    goto LABEL_64;
  }

  [v6 appendFormat:@", Ranging Quality: %@ ", off_1E7F14198[distanceMeasurementQuality]];
  motionState = self->_motionState;
  if (motionState >= 3)
  {
    v45 = 61;
    v46 = "NIMotionActivityStateToString";
LABEL_64:
    __assert_rtn(v46, "NINearbyObject.mm", v45, "false");
  }

  [v6 appendFormat:@", Motion State: %@", off_1E7F141B8[motionState]];
  signalStrength = self->_signalStrength;
  v19 = *&NINearbyObjectSignalStrengthNotAvailable;
  if (signalStrength == *&NINearbyObjectSignalStrengthNotAvailable)
  {
    v20 = @"-";
  }

  else
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f dBm", *&self->_signalStrength];
  }

  [v6 appendFormat:@", Signal Strength: %@", v20];
  if (signalStrength != v19)
  {
  }

  remoteTxAntennaMask = self->_remoteTxAntennaMask;
  v22 = NINearbyObjectRemoteTxAntennaMaskNotAvailable;
  if (remoteTxAntennaMask == NINearbyObjectRemoteTxAntennaMaskNotAvailable)
  {
    v23 = @"-";
  }

  else
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%02x", self->_remoteTxAntennaMask];
  }

  [v6 appendFormat:@", Remote Tx Antenna Mask: %@", v23];
  if (remoteTxAntennaMask != v22)
  {
  }

  v24 = *self->_worldPosition;
  v25 = vceqq_f32(v24, NINearbyObjectWorldPositionNotAvailable);
  v25.i32[3] = v25.i32[2];
  if ((vminvq_u32(v25) & 0x80000000) != 0)
  {
    [v6 appendString:{@", World Position not available"}];
  }

  else
  {
    [v6 appendFormat:@", World Position: (%.2f, %.2f, %.2f)", v24.f32[0], v24.f32[1], v24.f32[2]];
  }

  if (self->_requiresBiasCorrection)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v6 appendFormat:@", Require Bias Correction: %@", v26];
  rangeBiasEstimate = self->_rangeBiasEstimate;
  v28 = *&NINearbyObjectRangeBiasEstimateNotAvailable;
  if (rangeBiasEstimate == *&NINearbyObjectRangeBiasEstimateNotAvailable)
  {
    v29 = @"-";
  }

  else
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f m", *&self->_rangeBiasEstimate];
  }

  [v6 appendFormat:@", Range Bias Estimate: %@", v29];
  if (rangeBiasEstimate != v28)
  {
  }

  rangeUncertainty = self->_rangeUncertainty;
  v31 = *&NINearbyObjectRangeUncertaintyNotAvailable;
  if (rangeUncertainty == *&NINearbyObjectRangeUncertaintyNotAvailable)
  {
    v32 = @"-";
  }

  else
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f m", *&self->_rangeUncertainty];
  }

  [v6 appendFormat:@", Range Uncertainty: %@", v32];
  if (rangeUncertainty != v31)
  {
  }

  v33 = [(UWBSignalFeatures *)self->_uwbSignalFeatures description];
  [v6 appendFormat:@", Bias features: %@", v33];

  nbRxStatus = self->_nbRxStatus;
  v35 = NINearbyObjectRxStatusNotAvailable;
  if (nbRxStatus == NINearbyObjectRxStatusNotAvailable)
  {
    v36 = @"-";
  }

  else
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_nbRxStatus];
  }

  [v6 appendFormat:@", NB Rx status: %@", v36];
  if (nbRxStatus != v35)
  {
  }

  mmsRxStatus = self->_mmsRxStatus;
  v38 = NINearbyObjectRxStatusNotAvailable;
  if (mmsRxStatus == NINearbyObjectRxStatusNotAvailable)
  {
    v39 = @"-";
  }

  else
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_mmsRxStatus];
  }

  [v6 appendFormat:@", UWB Rx status: %@", v39];
  if (mmsRxStatus != v38)
  {
  }

  nbRssi = self->_nbRssi;
  v41 = *&NINearbyObjectNbRssiNotAvailable;
  if (nbRssi == *&NINearbyObjectNbRssiNotAvailable)
  {
    v42 = @"-";
  }

  else
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f dBm", *&self->_nbRssi];
  }

  [v6 appendFormat:@", NB RSSI: %@", v42];
  if (nbRssi != v41)
  {
  }

  if (self->_canInteract)
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  [v6 appendFormat:@", Can Interact: %@", v43];
  [v6 appendString:@">"];

  return v6;
}

+ (id)fauxObjectWithDiscoveryToken:(id)a3 name:(id)a4 deviceIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[NINearbyObject alloc] initWithToken:v7];
  [(NINearbyObject *)v10 setName:v8];
  [(NINearbyObject *)v10 setDeviceIdentifier:v9];

  return v10;
}

@end