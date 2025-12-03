@interface RAPDirectionsRecording
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (NSString)description;
- (RAPNavSessionID)navigationSessionID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)clusteredRouteRideSelectionsAtIndex:(unint64_t)index;
- (void)addAuxiliaryControls:(id)controls;
- (void)addDirectionsRequests:(id)requests;
- (void)addDirectionsResponses:(id)responses;
- (void)addRoute:(id)route;
- (void)addUserPath:(id)path;
- (void)addWaypoints:(id)waypoints;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasOriginatingAuxiliaryControlIndex:(BOOL)index;
- (void)setHasSelectedDirectionsResponseIndex:(BOOL)index;
- (void)setHasSelectedSuggestedRouteIndexInDirectionsResponse:(BOOL)response;
- (void)writeTo:(id)to;
@end

@implementation RAPDirectionsRecording

- (RAPNavSessionID)navigationSessionID
{
  p_navigationSessionID = &self->_navigationSessionID;
  high = self->_navigationSessionID._high;
  low = p_navigationSessionID->_low;
  result._low = low;
  result._high = high;
  return result;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v5 = *(fromCopy + 8);
  v6 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v68;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v68 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(RAPDirectionsRecording *)self addDirectionsRequests:*(*(&v67 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v7);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(fromCopy + 10);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v64;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(RAPDirectionsRecording *)self addDirectionsResponses:*(*(&v63 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v12);
  }

  v15 = fromCopy[160];
  if ((v15 & 4) != 0)
  {
    self->_selectedDirectionsResponseIndex = *(fromCopy + 30);
    *&self->_has |= 4u;
    v15 = fromCopy[160];
  }

  if ((v15 & 8) != 0)
  {
    self->_selectedSuggestedRouteIndexInDirectionsResponse = *(fromCopy + 31);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 13))
  {
    [(RAPDirectionsRecording *)self setOverviewScreenshotImageData:?];
  }

  if (*(fromCopy + 9))
  {
    [(RAPDirectionsRecording *)self setDirectionsResponseID:?];
  }

  startWaypoint = self->_startWaypoint;
  v17 = *(fromCopy + 16);
  if (startWaypoint)
  {
    if (v17)
    {
      [(RAPUserSearchInput *)startWaypoint mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(RAPDirectionsRecording *)self setStartWaypoint:?];
  }

  endWaypoint = self->_endWaypoint;
  v19 = *(fromCopy + 11);
  if (endWaypoint)
  {
    if (v19)
    {
      [(RAPUserSearchInput *)endWaypoint mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(RAPDirectionsRecording *)self setEndWaypoint:?];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v20 = *(fromCopy + 7);
  v21 = [v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v60;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(RAPDirectionsRecording *)self addAuxiliaryControls:*(*(&v59 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v22);
  }

  if ((fromCopy[160] & 2) != 0)
  {
    self->_originatingAuxiliaryControlIndex = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  startWaypointCorrectedSearchTemplate = self->_startWaypointCorrectedSearchTemplate;
  v26 = *(fromCopy + 17);
  if (startWaypointCorrectedSearchTemplate)
  {
    if (v26)
    {
      [(GEORPCorrectedSearch *)startWaypointCorrectedSearchTemplate mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(RAPDirectionsRecording *)self setStartWaypointCorrectedSearchTemplate:?];
  }

  endWaypointCorrectedSearchTemplate = self->_endWaypointCorrectedSearchTemplate;
  v28 = *(fromCopy + 12);
  if (endWaypointCorrectedSearchTemplate)
  {
    if (v28)
    {
      [(GEORPCorrectedSearch *)endWaypointCorrectedSearchTemplate mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(RAPDirectionsRecording *)self setEndWaypointCorrectedSearchTemplate:?];
  }

  clusteredRouteRideSelectionsCount = [fromCopy clusteredRouteRideSelectionsCount];
  if (clusteredRouteRideSelectionsCount)
  {
    v30 = clusteredRouteRideSelectionsCount;
    for (m = 0; m != v30; ++m)
    {
      -[RAPDirectionsRecording addClusteredRouteRideSelections:](self, "addClusteredRouteRideSelections:", [fromCopy clusteredRouteRideSelectionsAtIndex:m]);
    }
  }

  if (fromCopy[160])
  {
    self->_navigationSessionID = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v32 = *(fromCopy + 18);
  v33 = [v32 countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v56;
    do
    {
      for (n = 0; n != v34; n = n + 1)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(RAPDirectionsRecording *)self addUserPath:*(*(&v55 + 1) + 8 * n)];
      }

      v34 = [v32 countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v34);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = *(fromCopy + 19);
  v38 = [v37 countByEnumeratingWithState:&v51 objects:v72 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v52;
    do
    {
      for (ii = 0; ii != v39; ii = ii + 1)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [(RAPDirectionsRecording *)self addWaypoints:*(*(&v51 + 1) + 8 * ii)];
      }

      v39 = [v37 countByEnumeratingWithState:&v51 objects:v72 count:16];
    }

    while (v39);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = *(fromCopy + 14);
  v43 = [v42 countByEnumeratingWithState:&v47 objects:v71 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v48;
    do
    {
      for (jj = 0; jj != v44; jj = jj + 1)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [(RAPDirectionsRecording *)self addRoute:*(*(&v47 + 1) + 8 * jj), v47];
      }

      v44 = [v42 countByEnumeratingWithState:&v47 objects:v71 count:16];
    }

    while (v44);
  }
}

- (unint64_t)hash
{
  v19 = [(NSMutableArray *)self->_directionsRequests hash];
  v18 = [(NSMutableArray *)self->_directionsResponses hash];
  if ((*&self->_has & 4) != 0)
  {
    v17 = 2654435761 * self->_selectedDirectionsResponseIndex;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v16 = 2654435761 * self->_selectedSuggestedRouteIndexInDirectionsResponse;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  v15 = [(NSData *)self->_overviewScreenshotImageData hash];
  v3 = [(NSData *)self->_directionsResponseID hash];
  v4 = [(RAPUserSearchInput *)self->_startWaypoint hash];
  v5 = [(RAPUserSearchInput *)self->_endWaypoint hash];
  v6 = [(NSMutableArray *)self->_auxiliaryControls hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761u * self->_originatingAuxiliaryControlIndex;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(GEORPCorrectedSearch *)self->_startWaypointCorrectedSearchTemplate hash];
  v9 = [(GEORPCorrectedSearch *)self->_endWaypointCorrectedSearchTemplate hash];
  v10 = PBRepeatedUInt32Hash();
  if (*&self->_has)
  {
    v11 = PBHashBytes();
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 ^ v11 ^ [(NSMutableArray *)self->_userPaths hash];
  v13 = v12 ^ [(NSMutableArray *)self->_waypoints hash];
  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v13 ^ [(NSMutableArray *)self->_routes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  directionsRequests = self->_directionsRequests;
  if (directionsRequests | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)directionsRequests isEqual:?])
    {
      goto LABEL_51;
    }
  }

  directionsResponses = self->_directionsResponses;
  if (directionsResponses | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)directionsResponses isEqual:?])
    {
      goto LABEL_51;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 160) & 4) == 0 || self->_selectedDirectionsResponseIndex != *(equalCopy + 30))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 160) & 4) != 0)
  {
LABEL_51:
    v18 = 0;
    goto LABEL_52;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 160) & 8) == 0 || self->_selectedSuggestedRouteIndexInDirectionsResponse != *(equalCopy + 31))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 160) & 8) != 0)
  {
    goto LABEL_51;
  }

  overviewScreenshotImageData = self->_overviewScreenshotImageData;
  if (overviewScreenshotImageData | *(equalCopy + 13) && ![(NSData *)overviewScreenshotImageData isEqual:?])
  {
    goto LABEL_51;
  }

  directionsResponseID = self->_directionsResponseID;
  if (directionsResponseID | *(equalCopy + 9))
  {
    if (![(NSData *)directionsResponseID isEqual:?])
    {
      goto LABEL_51;
    }
  }

  startWaypoint = self->_startWaypoint;
  if (startWaypoint | *(equalCopy + 16))
  {
    if (![(RAPUserSearchInput *)startWaypoint isEqual:?])
    {
      goto LABEL_51;
    }
  }

  endWaypoint = self->_endWaypoint;
  if (endWaypoint | *(equalCopy + 11))
  {
    if (![(RAPUserSearchInput *)endWaypoint isEqual:?])
    {
      goto LABEL_51;
    }
  }

  auxiliaryControls = self->_auxiliaryControls;
  if (auxiliaryControls | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)auxiliaryControls isEqual:?])
    {
      goto LABEL_51;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 160) & 2) == 0 || self->_originatingAuxiliaryControlIndex != *(equalCopy + 6))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 160) & 2) != 0)
  {
    goto LABEL_51;
  }

  startWaypointCorrectedSearchTemplate = self->_startWaypointCorrectedSearchTemplate;
  if (startWaypointCorrectedSearchTemplate | *(equalCopy + 17) && ![(GEORPCorrectedSearch *)startWaypointCorrectedSearchTemplate isEqual:?])
  {
    goto LABEL_51;
  }

  endWaypointCorrectedSearchTemplate = self->_endWaypointCorrectedSearchTemplate;
  if (endWaypointCorrectedSearchTemplate | *(equalCopy + 12))
  {
    if (![(GEORPCorrectedSearch *)endWaypointCorrectedSearchTemplate isEqual:?])
    {
      goto LABEL_51;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_51;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 160) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (self->_navigationSessionID._high != *(equalCopy + 1) || self->_navigationSessionID._low != *(equalCopy + 2))
    {
      goto LABEL_51;
    }
  }

  else if (*(equalCopy + 160))
  {
    goto LABEL_51;
  }

  userPaths = self->_userPaths;
  if (userPaths | *(equalCopy + 18) && ![(NSMutableArray *)userPaths isEqual:?])
  {
    goto LABEL_51;
  }

  waypoints = self->_waypoints;
  if (waypoints | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)waypoints isEqual:?])
    {
      goto LABEL_51;
    }
  }

  routes = self->_routes;
  if (routes | *(equalCopy + 14))
  {
    v18 = [(NSMutableArray *)routes isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_52:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v6 = self->_directionsRequests;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v77;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v76 + 1) + 8 * i) copyWithZone:zone];
        [v5 addDirectionsRequests:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v8);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = self->_directionsResponses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v73;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v72 + 1) + 8 * j) copyWithZone:zone];
        [v5 addDirectionsResponses:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 30) = self->_selectedDirectionsResponseIndex;
    v5[160] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 31) = self->_selectedSuggestedRouteIndexInDirectionsResponse;
    v5[160] |= 8u;
  }

  v19 = [(NSData *)self->_overviewScreenshotImageData copyWithZone:zone];
  v20 = *(v5 + 13);
  *(v5 + 13) = v19;

  v21 = [(NSData *)self->_directionsResponseID copyWithZone:zone];
  v22 = *(v5 + 9);
  *(v5 + 9) = v21;

  v23 = [(RAPUserSearchInput *)self->_startWaypoint copyWithZone:zone];
  v24 = *(v5 + 16);
  *(v5 + 16) = v23;

  v25 = [(RAPUserSearchInput *)self->_endWaypoint copyWithZone:zone];
  v26 = *(v5 + 11);
  *(v5 + 11) = v25;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v27 = self->_auxiliaryControls;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v68 objects:v83 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v69;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v69 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v68 + 1) + 8 * k) copyWithZone:zone];
        [v5 addAuxiliaryControls:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v68 objects:v83 count:16];
    }

    while (v29);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 6) = self->_originatingAuxiliaryControlIndex;
    v5[160] |= 2u;
  }

  v33 = [(GEORPCorrectedSearch *)self->_startWaypointCorrectedSearchTemplate copyWithZone:zone];
  v34 = *(v5 + 17);
  *(v5 + 17) = v33;

  v35 = [(GEORPCorrectedSearch *)self->_endWaypointCorrectedSearchTemplate copyWithZone:zone];
  v36 = *(v5 + 12);
  *(v5 + 12) = v35;

  PBRepeatedUInt32Copy();
  if (*&self->_has)
  {
    *(v5 + 8) = self->_navigationSessionID;
    v5[160] |= 1u;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v37 = self->_userPaths;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v64 objects:v82 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v65;
    do
    {
      for (m = 0; m != v39; m = m + 1)
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v64 + 1) + 8 * m) copyWithZone:zone];
        [v5 addUserPath:v42];
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v64 objects:v82 count:16];
    }

    while (v39);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = self->_waypoints;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v60 objects:v81 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v61;
    do
    {
      for (n = 0; n != v45; n = n + 1)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [*(*(&v60 + 1) + 8 * n) copyWithZone:zone];
        [v5 addWaypoints:v48];
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v60 objects:v81 count:16];
    }

    while (v45);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = self->_routes;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v56 objects:v80 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v57;
    do
    {
      for (ii = 0; ii != v51; ii = ii + 1)
      {
        if (*v57 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v56 + 1) + 8 * ii) copyWithZone:{zone, v56}];
        [v5 addRoute:v54];
      }

      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v56 objects:v80 count:16];
    }

    while (v51);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(RAPDirectionsRecording *)self directionsRequestsCount])
  {
    [toCopy clearDirectionsRequests];
    directionsRequestsCount = [(RAPDirectionsRecording *)self directionsRequestsCount];
    if (directionsRequestsCount)
    {
      v5 = directionsRequestsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(RAPDirectionsRecording *)self directionsRequestsAtIndex:i];
        [toCopy addDirectionsRequests:v7];
      }
    }
  }

  if ([(RAPDirectionsRecording *)self directionsResponsesCount])
  {
    [toCopy clearDirectionsResponses];
    directionsResponsesCount = [(RAPDirectionsRecording *)self directionsResponsesCount];
    if (directionsResponsesCount)
    {
      v9 = directionsResponsesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(RAPDirectionsRecording *)self directionsResponsesAtIndex:j];
        [toCopy addDirectionsResponses:v11];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 30) = self->_selectedDirectionsResponseIndex;
    toCopy[160] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(toCopy + 31) = self->_selectedSuggestedRouteIndexInDirectionsResponse;
    toCopy[160] |= 8u;
  }

  if (self->_overviewScreenshotImageData)
  {
    [toCopy setOverviewScreenshotImageData:?];
  }

  if (self->_directionsResponseID)
  {
    [toCopy setDirectionsResponseID:?];
  }

  if (self->_startWaypoint)
  {
    [toCopy setStartWaypoint:?];
  }

  if (self->_endWaypoint)
  {
    [toCopy setEndWaypoint:?];
  }

  if ([(RAPDirectionsRecording *)self auxiliaryControlsCount])
  {
    [toCopy clearAuxiliaryControls];
    auxiliaryControlsCount = [(RAPDirectionsRecording *)self auxiliaryControlsCount];
    if (auxiliaryControlsCount)
    {
      v14 = auxiliaryControlsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(RAPDirectionsRecording *)self auxiliaryControlsAtIndex:k];
        [toCopy addAuxiliaryControls:v16];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 6) = self->_originatingAuxiliaryControlIndex;
    toCopy[160] |= 2u;
  }

  if (self->_startWaypointCorrectedSearchTemplate)
  {
    [toCopy setStartWaypointCorrectedSearchTemplate:?];
  }

  if (self->_endWaypointCorrectedSearchTemplate)
  {
    [toCopy setEndWaypointCorrectedSearchTemplate:?];
  }

  if ([(RAPDirectionsRecording *)self clusteredRouteRideSelectionsCount])
  {
    [toCopy clearClusteredRouteRideSelections];
    clusteredRouteRideSelectionsCount = [(RAPDirectionsRecording *)self clusteredRouteRideSelectionsCount];
    if (clusteredRouteRideSelectionsCount)
    {
      v18 = clusteredRouteRideSelectionsCount;
      for (m = 0; m != v18; ++m)
      {
        [toCopy addClusteredRouteRideSelections:{-[RAPDirectionsRecording clusteredRouteRideSelectionsAtIndex:](self, "clusteredRouteRideSelectionsAtIndex:", m)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_navigationSessionID;
    toCopy[160] |= 1u;
  }

  if ([(RAPDirectionsRecording *)self userPathsCount])
  {
    [toCopy clearUserPaths];
    userPathsCount = [(RAPDirectionsRecording *)self userPathsCount];
    if (userPathsCount)
    {
      v21 = userPathsCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(RAPDirectionsRecording *)self userPathAtIndex:n];
        [toCopy addUserPath:v23];
      }
    }
  }

  if ([(RAPDirectionsRecording *)self waypointsCount])
  {
    [toCopy clearWaypoints];
    waypointsCount = [(RAPDirectionsRecording *)self waypointsCount];
    if (waypointsCount)
    {
      v25 = waypointsCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(RAPDirectionsRecording *)self waypointsAtIndex:ii];
        [toCopy addWaypoints:v27];
      }
    }
  }

  if ([(RAPDirectionsRecording *)self routesCount])
  {
    [toCopy clearRoutes];
    routesCount = [(RAPDirectionsRecording *)self routesCount];
    if (routesCount)
    {
      v29 = routesCount;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(RAPDirectionsRecording *)self routeAtIndex:jj];
        [toCopy addRoute:v31];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = self->_directionsRequests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v60;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v7);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = self->_directionsResponses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v12);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_overviewScreenshotImageData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_directionsResponseID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_startWaypoint)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_endWaypoint)
  {
    PBDataWriterWriteSubmessage();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = self->_auxiliaryControls;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v52;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_startWaypointCorrectedSearchTemplate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_endWaypointCorrectedSearchTemplate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_clusteredRouteRideSelections.count)
  {
    v21 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v21;
    }

    while (v21 < self->_clusteredRouteRideSelections.count);
  }

  if (*&self->_has)
  {
    v50 = 0;
    PBDataWriterPlaceMark();
    v22 = toCopy;
    PBDataWriterWriteUint64Field();
    PBDataWriterWriteUint64Field();

    PBDataWriterRecallMark();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = self->_userPaths;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v23);
        }

        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v65 count:16];
    }

    while (v25);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = self->_waypoints;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v42 objects:v64 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v43;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(v28);
        }

        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v42 objects:v64 count:16];
    }

    while (v30);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = self->_routes;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v38 objects:v63 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v39;
    do
    {
      for (ii = 0; ii != v35; ++ii)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(v33);
        }

        PBDataWriterWriteSubmessage();
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v38 objects:v63 count:16];
    }

    while (v35);
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position >= [from length])
  {
LABEL_161:
    LOBYTE(v18) = [from hasError] ^ 1;
    return v18;
  }

  while (2)
  {
    if ([from hasError])
    {
      goto LABEL_161;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v80) = 0;
      v9 = [from position] + 1;
      if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v80 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v8 |= (v80 & 0x7F) << v6;
      if ((v80 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_15;
      }
    }

    v13 = [from hasError] ? 0 : v8;
LABEL_15:
    if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      goto LABEL_161;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(GEODirectionsRequest);
        [(RAPDirectionsRecording *)self addDirectionsRequests:v14];
        goto LABEL_132;
      case 2u:
        v14 = objc_alloc_init(GEODirectionsResponse);
        [(RAPDirectionsRecording *)self addDirectionsResponses:v14];
        goto LABEL_132;
      case 3u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          LOBYTE(v80) = 0;
          v36 = [from position] + 1;
          if (v36 >= [from position] && (v37 = objc_msgSend(from, "position") + 1, v37 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v80 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v35 |= (v80 & 0x7F) << v33;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v12 = v34++ >= 9;
          if (v12)
          {
            v39 = 0;
            goto LABEL_144;
          }
        }

        if ([from hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v35;
        }

LABEL_144:
        v72 = 120;
        goto LABEL_149;
      case 4u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          LOBYTE(v80) = 0;
          v43 = [from position] + 1;
          if (v43 >= [from position] && (v44 = objc_msgSend(from, "position") + 1, v44 <= objc_msgSend(from, "length")))
          {
            data3 = [from data];
            [data3 getBytes:&v80 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v42 |= (v80 & 0x7F) << v40;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v39 = 0;
            goto LABEL_148;
          }
        }

        if ([from hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v42;
        }

LABEL_148:
        v72 = 124;
LABEL_149:
        *&self->PBCodable_opaque[v72] = v39;
        goto LABEL_135;
      case 5u:
        v16 = PBReaderReadData();
        v17 = 104;
        goto LABEL_73;
      case 6u:
        v16 = PBReaderReadData();
        v17 = 72;
LABEL_73:
        v47 = *&self->PBCodable_opaque[v17];
        *&self->PBCodable_opaque[v17] = v16;

        goto LABEL_135;
      case 7u:
        v14 = objc_alloc_init(RAPUserSearchInput);
        v46 = 128;
        goto LABEL_125;
      case 8u:
        v14 = objc_alloc_init(RAPUserSearchInput);
        v46 = 88;
LABEL_125:
        objc_storeStrong(&self->PBCodable_opaque[v46], v14);
        goto LABEL_126;
      case 9u:
        v14 = objc_alloc_init(GEORPAuxiliaryControl);
        [(RAPDirectionsRecording *)self addAuxiliaryControls:v14];
        goto LABEL_132;
      case 0xAu:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v80) = 0;
          v29 = [from position] + 1;
          if (v29 >= [from position] && (v30 = objc_msgSend(from, "position") + 1, v30 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:&v80 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v28 |= (v80 & 0x7F) << v26;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v12 = v27++ >= 9;
          if (v12)
          {
            v32 = 0;
            goto LABEL_140;
          }
        }

        if ([from hasError])
        {
          v32 = 0;
        }

        else
        {
          v32 = v28;
        }

LABEL_140:
        self->_originatingAuxiliaryControlIndex = v32;
        goto LABEL_135;
      case 0xBu:
        v14 = objc_alloc_init(GEORPCorrectedSearch);
        v15 = 136;
        goto LABEL_130;
      case 0xCu:
        v14 = objc_alloc_init(GEORPCorrectedSearch);
        v15 = 96;
LABEL_130:
        objc_storeStrong(&self->PBCodable_opaque[v15], v14);
        goto LABEL_132;
      case 0xDu:
        if ((v13 & 7) == 2)
        {
          v80 = 0;
          v81 = 0;
          v18 = PBReaderPlaceMark();
          if (!v18)
          {
            return v18;
          }

          while (1)
          {
            position2 = [from position];
            if (position2 >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
            {
              break;
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              v82 = 0;
              v23 = [from position] + 1;
              if (v23 >= [from position] && (v24 = objc_msgSend(from, "position") + 1, v24 <= objc_msgSend(from, "length")))
              {
                data5 = [from data];
                [data5 getBytes:&v82 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v22 |= (v82 & 0x7F) << v20;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v12 = v21++ >= 9;
              if (v12)
              {
                goto LABEL_39;
              }
            }

            [from hasError];
LABEL_39:
            PBRepeatedUInt32Add();
          }

LABEL_123:
          PBReaderRecallMark();
        }

        else
        {
          v73 = 0;
          v74 = 0;
          v75 = 0;
          while (1)
          {
            LOBYTE(v80) = 0;
            v76 = [from position] + 1;
            if (v76 >= [from position] && (v77 = objc_msgSend(from, "position") + 1, v77 <= objc_msgSend(from, "length")))
            {
              data6 = [from data];
              [data6 getBytes:&v80 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v75 |= (v80 & 0x7F) << v73;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v12 = v74++ >= 9;
            if (v12)
            {
              goto LABEL_160;
            }
          }

          [from hasError];
LABEL_160:
          PBRepeatedUInt32Add();
        }

        goto LABEL_135;
      case 0xEu:
        *&self->_has |= 1u;
        v80 = 0;
        v81 = 0;
        v18 = PBReaderPlaceMark();
        if (!v18)
        {
          return v18;
        }

        position3 = [from position];
        if (position3 >= [from length])
        {
          goto LABEL_122;
        }

        do
        {
          if ([from hasError])
          {
            break;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          while (1)
          {
            v82 = 0;
            v52 = [from position] + 1;
            if (v52 >= [from position] && (v53 = objc_msgSend(from, "position") + 1, v53 <= objc_msgSend(from, "length")))
            {
              data7 = [from data];
              [data7 getBytes:&v82 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v51 |= (v82 & 0x7F) << v49;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v12 = v50++ >= 9;
            if (v12)
            {
              v55 = 0;
              goto LABEL_89;
            }
          }

          v55 = [from hasError] ? 0 : v51;
LABEL_89:
          if (([from hasError] & 1) != 0 || (v55 & 7) == 4)
          {
            break;
          }

          if ((v55 >> 3) == 1)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            while (1)
            {
              v82 = 0;
              v66 = [from position] + 1;
              if (v66 >= [from position] && (v67 = objc_msgSend(from, "position") + 1, v67 <= objc_msgSend(from, "length")))
              {
                data8 = [from data];
                [data8 getBytes:&v82 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v65 |= (v82 & 0x7F) << v63;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v12 = v64++ >= 9;
              if (v12)
              {
                v69 = 0;
                goto LABEL_120;
              }
            }

            v69 = [from hasError] ? 0 : v65;
LABEL_120:
            self->_navigationSessionID._low = v69;
          }

          else if ((v55 >> 3) == 2)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              v82 = 0;
              v59 = [from position] + 1;
              if (v59 >= [from position] && (v60 = objc_msgSend(from, "position") + 1, v60 <= objc_msgSend(from, "length")))
              {
                data9 = [from data];
                [data9 getBytes:&v82 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v58 |= (v82 & 0x7F) << v56;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v12 = v57++ >= 9;
              if (v12)
              {
                v62 = 0;
                goto LABEL_116;
              }
            }

            v62 = [from hasError] ? 0 : v58;
LABEL_116:
            self->_navigationSessionID._high = v62;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_164;
          }

          position4 = [from position];
        }

        while (position4 < [from length]);
LABEL_122:
        if (([from hasError] & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_164;
      case 0xFu:
        v14 = objc_alloc_init(RAPUserPathEntry);
        [(RAPDirectionsRecording *)self addUserPath:v14];
        v80 = 0;
        v81 = 0;
        if (!PBReaderPlaceMark() || !sub_100DE52EC(v14, from))
        {
          goto LABEL_163;
        }

        goto LABEL_134;
      case 0x10u:
        v14 = objc_alloc_init(RAPUserSearchInput);
        [(RAPDirectionsRecording *)self addWaypoints:v14];
LABEL_126:
        v80 = 0;
        v81 = 0;
        if (!PBReaderPlaceMark() || !sub_100A79484(v14, from))
        {
          goto LABEL_163;
        }

        goto LABEL_134;
      case 0x11u:
        v14 = objc_alloc_init(GEOWaypointRoute);
        [(RAPDirectionsRecording *)self addRoute:v14];
LABEL_132:
        v80 = 0;
        v81 = 0;
        if (PBReaderPlaceMark() && [(RAPUserSearchInput *)v14 readFrom:from])
        {
LABEL_134:
          PBReaderRecallMark();

LABEL_135:
          position5 = [from position];
          if (position5 >= [from length])
          {
            goto LABEL_161;
          }

          continue;
        }

LABEL_163:

LABEL_164:
        LOBYTE(v18) = 0;
        return v18;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_135;
    }
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_directionsRequests count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_directionsRequests, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v5 = self->_directionsRequests;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v86;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v86 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v85 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v85 objects:v94 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"directionsRequests"];
  }

  if ([(NSMutableArray *)self->_directionsResponses count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_directionsResponses, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v12 = self->_directionsResponses;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v82;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v82 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v81 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"directionsResponses"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v19 = [NSNumber numberWithUnsignedInt:self->_selectedDirectionsResponseIndex];
    [v3 setObject:v19 forKey:@"selectedDirectionsResponseIndex"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v20 = [NSNumber numberWithUnsignedInt:self->_selectedSuggestedRouteIndexInDirectionsResponse];
    [v3 setObject:v20 forKey:@"selectedSuggestedRouteIndexInDirectionsResponse"];
  }

  overviewScreenshotImageData = self->_overviewScreenshotImageData;
  if (overviewScreenshotImageData)
  {
    [v3 setObject:overviewScreenshotImageData forKey:@"overviewScreenshotImageData"];
  }

  directionsResponseID = self->_directionsResponseID;
  if (directionsResponseID)
  {
    [v3 setObject:directionsResponseID forKey:@"directionsResponseID"];
  }

  startWaypoint = self->_startWaypoint;
  if (startWaypoint)
  {
    dictionaryRepresentation3 = [(RAPUserSearchInput *)startWaypoint dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"startWaypoint"];
  }

  endWaypoint = self->_endWaypoint;
  if (endWaypoint)
  {
    dictionaryRepresentation4 = [(RAPUserSearchInput *)endWaypoint dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"endWaypoint"];
  }

  if ([(NSMutableArray *)self->_auxiliaryControls count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_auxiliaryControls, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v28 = self->_auxiliaryControls;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v77 objects:v92 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v78;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v78 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation5 = [*(*(&v77 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation5];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v77 objects:v92 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"auxiliaryControls"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v34 = [NSNumber numberWithUnsignedLongLong:self->_originatingAuxiliaryControlIndex];
    [v3 setObject:v34 forKey:@"originatingAuxiliaryControlIndex"];
  }

  startWaypointCorrectedSearchTemplate = self->_startWaypointCorrectedSearchTemplate;
  if (startWaypointCorrectedSearchTemplate)
  {
    dictionaryRepresentation6 = [(GEORPCorrectedSearch *)startWaypointCorrectedSearchTemplate dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation6 forKey:@"startWaypointCorrectedSearchTemplate"];
  }

  endWaypointCorrectedSearchTemplate = self->_endWaypointCorrectedSearchTemplate;
  if (endWaypointCorrectedSearchTemplate)
  {
    dictionaryRepresentation7 = [(GEORPCorrectedSearch *)endWaypointCorrectedSearchTemplate dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"endWaypointCorrectedSearchTemplate"];
  }

  v39 = PBRepeatedUInt32NSArray();
  [v3 setObject:v39 forKey:@"clusteredRouteRideSelections"];

  if (*&self->_has)
  {
    v40 = +[NSMutableDictionary dictionary];
    v41 = [NSNumber numberWithUnsignedLongLong:self->_navigationSessionID._low];
    [v40 setObject:v41 forKey:@"low"];

    v42 = [NSNumber numberWithUnsignedLongLong:self->_navigationSessionID._high];
    [v40 setObject:v42 forKey:@"high"];

    [v3 setObject:v40 forKey:@"navigationSessionID"];
  }

  if ([(NSMutableArray *)self->_userPaths count])
  {
    v43 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_userPaths, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v44 = self->_userPaths;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v73 objects:v91 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v74;
      do
      {
        for (m = 0; m != v46; m = m + 1)
        {
          if (*v74 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation8 = [*(*(&v73 + 1) + 8 * m) dictionaryRepresentation];
          [v43 addObject:dictionaryRepresentation8];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v73 objects:v91 count:16];
      }

      while (v46);
    }

    [v3 setObject:v43 forKey:@"userPath"];
  }

  if ([(NSMutableArray *)self->_waypoints count])
  {
    v50 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_waypoints, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v51 = self->_waypoints;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v69 objects:v90 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v70;
      do
      {
        for (n = 0; n != v53; n = n + 1)
        {
          if (*v70 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation9 = [*(*(&v69 + 1) + 8 * n) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation9];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v69 objects:v90 count:16];
      }

      while (v53);
    }

    [v3 setObject:v50 forKey:@"waypoints"];
  }

  if ([(NSMutableArray *)self->_routes count])
  {
    v57 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_routes, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v58 = self->_routes;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v65 objects:v89 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v66;
      do
      {
        for (ii = 0; ii != v60; ii = ii + 1)
        {
          if (*v66 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation10 = [*(*(&v65 + 1) + 8 * ii) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation10];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v65 objects:v89 count:16];
      }

      while (v60);
    }

    [v3 setObject:v57 forKey:@"route"];
  }

  return v3;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = RAPDirectionsRecording;
  v3 = [(RAPDirectionsRecording *)&v7 description];
  dictionaryRepresentation = [(RAPDirectionsRecording *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addRoute:(id)route
{
  routeCopy = route;
  routes = self->_routes;
  v8 = routeCopy;
  if (!routes)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_routes;
    self->_routes = v6;

    routeCopy = v8;
    routes = self->_routes;
  }

  [(NSMutableArray *)routes addObject:routeCopy];
}

- (void)addWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  waypoints = self->_waypoints;
  v8 = waypointsCopy;
  if (!waypoints)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_waypoints;
    self->_waypoints = v6;

    waypointsCopy = v8;
    waypoints = self->_waypoints;
  }

  [(NSMutableArray *)waypoints addObject:waypointsCopy];
}

- (void)addUserPath:(id)path
{
  pathCopy = path;
  userPaths = self->_userPaths;
  v8 = pathCopy;
  if (!userPaths)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_userPaths;
    self->_userPaths = v6;

    pathCopy = v8;
    userPaths = self->_userPaths;
  }

  [(NSMutableArray *)userPaths addObject:pathCopy];
}

- (unsigned)clusteredRouteRideSelectionsAtIndex:(unint64_t)index
{
  p_clusteredRouteRideSelections = &self->_clusteredRouteRideSelections;
  count = self->_clusteredRouteRideSelections.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_clusteredRouteRideSelections->list[index];
}

- (void)setHasOriginatingAuxiliaryControlIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addAuxiliaryControls:(id)controls
{
  controlsCopy = controls;
  auxiliaryControls = self->_auxiliaryControls;
  v8 = controlsCopy;
  if (!auxiliaryControls)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_auxiliaryControls;
    self->_auxiliaryControls = v6;

    controlsCopy = v8;
    auxiliaryControls = self->_auxiliaryControls;
  }

  [(NSMutableArray *)auxiliaryControls addObject:controlsCopy];
}

- (void)setHasSelectedSuggestedRouteIndexInDirectionsResponse:(BOOL)response
{
  if (response)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSelectedDirectionsResponseIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addDirectionsResponses:(id)responses
{
  responsesCopy = responses;
  directionsResponses = self->_directionsResponses;
  v8 = responsesCopy;
  if (!directionsResponses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_directionsResponses;
    self->_directionsResponses = v6;

    responsesCopy = v8;
    directionsResponses = self->_directionsResponses;
  }

  [(NSMutableArray *)directionsResponses addObject:responsesCopy];
}

- (void)addDirectionsRequests:(id)requests
{
  requestsCopy = requests;
  directionsRequests = self->_directionsRequests;
  v8 = requestsCopy;
  if (!directionsRequests)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_directionsRequests;
    self->_directionsRequests = v6;

    requestsCopy = v8;
    directionsRequests = self->_directionsRequests;
  }

  [(NSMutableArray *)directionsRequests addObject:requestsCopy];
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = RAPDirectionsRecording;
  [(RAPDirectionsRecording *)&v3 dealloc];
}

@end