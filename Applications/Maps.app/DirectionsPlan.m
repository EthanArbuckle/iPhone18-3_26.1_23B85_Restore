@interface DirectionsPlan
+ (id)_maps_expiryDateForRoute:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)displayMethodAsString:(int)a3;
- (id)transitPrioritizationAsString:(int)a3;
- (int)StringAsDisplayMethod:(id)a3;
- (int)StringAsTransitPrioritization:(id)a3;
- (int)displayMethod;
- (int)transitPrioritization;
- (unint64_t)hash;
- (void)addHandlesForSharingETA:(id)a3;
- (void)addPlanningWaypoint:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvoidHighways:(BOOL)a3;
- (void)setHasAvoidTolls:(BOOL)a3;
- (void)setHasCurrentRouteIndex:(BOOL)a3;
- (void)setHasCurrentRouteStep:(BOOL)a3;
- (void)setHasDepartureTime:(BOOL)a3;
- (void)setHasDisplayMethod:(BOOL)a3;
- (void)setHasEarlierPagesLoaded:(BOOL)a3;
- (void)setHasExpiryTime:(BOOL)a3;
- (void)setHasIsPlayingTrace:(BOOL)a3;
- (void)setHasLaterPagesLoaded:(BOOL)a3;
- (void)setHasRoutesPerEarlierPage:(BOOL)a3;
- (void)setHasRoutesPerInitialPage:(BOOL)a3;
- (void)setHasRoutesPerLaterPage:(BOOL)a3;
- (void)setHasShouldRestoreLowGuidance:(BOOL)a3;
- (void)setHasTransitPrioritization:(BOOL)a3;
- (void)setHasTransitSurchargeOption:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DirectionsPlan

+ (id)_maps_expiryDateForRoute:(id)a3
{
  if (a3)
  {
    v3 = [a3 expectedTime];
    v4 = v3 + 3600.0;
    if (v3 <= 0xE10)
    {
      v4 = (2 * v3);
    }
  }

  else
  {
    GEOConfigGetDouble();
  }

  return [NSDate dateWithTimeIntervalSinceNow:v4];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  routeRequestStorage = self->_routeRequestStorage;
  v6 = *(v4 + 13);
  if (routeRequestStorage)
  {
    if (v6)
    {
      [(GEOStorageRouteRequestStorage *)routeRequestStorage mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(DirectionsPlan *)self setRouteRequestStorage:?];
  }

  if (*(v4 + 11))
  {
    [(DirectionsPlan *)self setOriginString:?];
  }

  if (*(v4 + 7))
  {
    [(DirectionsPlan *)self setDestinationString:?];
  }

  v7 = *(v4 + 37);
  if ((v7 & 8) != 0)
  {
    self->_departureTime = *(v4 + 4);
    *&self->_has |= 8u;
    v7 = *(v4 + 37);
    if ((v7 & 1) == 0)
    {
LABEL_12:
      if ((v7 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  self->_arrivalTime = *(v4 + 1);
  *&self->_has |= 1u;
  v7 = *(v4 + 37);
  if ((v7 & 2) == 0)
  {
LABEL_13:
    if ((v7 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_currentRouteIndex = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 37);
  if ((v7 & 4) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  self->_currentRouteStep = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 37) & 0x20) != 0)
  {
LABEL_15:
    self->_displayMethod = *(v4 + 16);
    *&self->_has |= 0x20u;
  }

LABEL_16:
  transitPreferences = self->_transitPreferences;
  v9 = *(v4 + 16);
  if (transitPreferences)
  {
    if (v9)
    {
      [(DirectionsPlanTransitPreferences *)transitPreferences mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(DirectionsPlan *)self setTransitPreferences:?];
  }

  v10 = *(v4 + 37);
  if ((v10 & 0x200) != 0)
  {
    self->_routesPerInitialPage = *(v4 + 29);
    *&self->_has |= 0x200u;
    v10 = *(v4 + 37);
    if ((v10 & 0x40) == 0)
    {
LABEL_28:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_59;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  self->_earlierPagesLoaded = *(v4 + 17);
  *&self->_has |= 0x40u;
  v10 = *(v4 + 37);
  if ((v10 & 0x80) == 0)
  {
LABEL_29:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_laterPagesLoaded = *(v4 + 20);
  *&self->_has |= 0x80u;
  v10 = *(v4 + 37);
  if ((v10 & 0x100) == 0)
  {
LABEL_30:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_routesPerEarlierPage = *(v4 + 28);
  *&self->_has |= 0x100u;
  v10 = *(v4 + 37);
  if ((v10 & 0x400) == 0)
  {
LABEL_31:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_routesPerLaterPage = *(v4 + 30);
  *&self->_has |= 0x400u;
  v10 = *(v4 + 37);
  if ((v10 & 0x800) == 0)
  {
LABEL_32:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_transitPrioritization = *(v4 + 34);
  *&self->_has |= 0x800u;
  v10 = *(v4 + 37);
  if ((v10 & 0x1000) == 0)
  {
LABEL_33:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_transitSurchargeOption = *(v4 + 35);
  *&self->_has |= 0x1000u;
  v10 = *(v4 + 37);
  if ((v10 & 0x10) == 0)
  {
LABEL_34:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_expiryTime = *(v4 + 5);
  *&self->_has |= 0x10u;
  v10 = *(v4 + 37);
  if ((v10 & 0x10000) == 0)
  {
LABEL_35:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_shouldRestoreLowGuidance = *(v4 + 147);
  *&self->_has |= 0x10000u;
  v10 = *(v4 + 37);
  if ((v10 & 0x4000) == 0)
  {
LABEL_36:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_66:
  self->_avoidTolls = *(v4 + 145);
  *&self->_has |= 0x4000u;
  if ((*(v4 + 37) & 0x2000) != 0)
  {
LABEL_37:
    self->_avoidHighways = *(v4 + 144);
    *&self->_has |= 0x2000u;
  }

LABEL_38:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(v4 + 12);
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(DirectionsPlan *)self addPlanningWaypoint:*(*(&v25 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(v4 + 9);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(DirectionsPlan *)self addHandlesForSharingETA:*(*(&v21 + 1) + 8 * j), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }

  if (*(v4 + 6))
  {
    [(DirectionsPlan *)self setCompanionRouteContextData:?];
  }

  if ((*(v4 + 149) & 0x80) != 0)
  {
    self->_isPlayingTrace = *(v4 + 146);
    *&self->_has |= 0x8000u;
  }
}

- (unint64_t)hash
{
  v40 = [(GEOStorageRouteRequestStorage *)self->_routeRequestStorage hash];
  v39 = [(NSString *)self->_originString hash];
  v38 = [(NSString *)self->_destinationString hash];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v5 = fabs(self->_departureTime);
    v6 = floor(v5 + 0.5);
    v7 = (v5 - v6) * 1.84467441e19;
    v4 = 2654435761u * (v6 - trunc(v6 * 5.42101086e-20) * 1.84467441e19);
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if (*&has)
  {
    v9 = fabs(self->_arrivalTime);
    v10 = floor(v9 + 0.5);
    v11 = (v9 - v10) * 1.84467441e19;
    v8 = 2654435761u * (v10 - trunc(v10 * 5.42101086e-20) * 1.84467441e19);
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&has & 2) != 0)
  {
    v35 = 2654435761u * self->_currentRouteIndex;
    if ((*&has & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v35 = 0;
    if ((*&has & 4) != 0)
    {
LABEL_15:
      v34 = 2654435761u * self->_currentRouteStep;
      goto LABEL_18;
    }
  }

  v34 = 0;
LABEL_18:
  v36 = v8;
  v37 = v4;
  if ((*&has & 0x20) != 0)
  {
    v33 = 2654435761 * self->_displayMethod;
  }

  else
  {
    v33 = 0;
  }

  v32 = [(DirectionsPlanTransitPreferences *)self->_transitPreferences hash];
  v12 = self->_has;
  if ((*&v12 & 0x200) != 0)
  {
    v31 = 2654435761 * self->_routesPerInitialPage;
    if ((*&v12 & 0x40) != 0)
    {
LABEL_23:
      v30 = 2654435761 * self->_earlierPagesLoaded;
      if ((*&v12 & 0x80) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v31 = 0;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_23;
    }
  }

  v30 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_24:
    v29 = 2654435761 * self->_laterPagesLoaded;
    if ((*&v12 & 0x100) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  v29 = 0;
  if ((*&v12 & 0x100) != 0)
  {
LABEL_25:
    v28 = 2654435761 * self->_routesPerEarlierPage;
    if ((*&v12 & 0x400) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  v28 = 0;
  if ((*&v12 & 0x400) != 0)
  {
LABEL_26:
    v27 = 2654435761 * self->_routesPerLaterPage;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_35:
  v27 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_27:
    v26 = 2654435761 * self->_transitPrioritization;
    if ((*&v12 & 0x1000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  v26 = 0;
  if ((*&v12 & 0x1000) != 0)
  {
LABEL_28:
    v13 = 2654435761 * self->_transitSurchargeOption;
    if ((*&v12 & 0x10) != 0)
    {
      goto LABEL_29;
    }

LABEL_38:
    v17 = 0;
    goto LABEL_39;
  }

LABEL_37:
  v13 = 0;
  if ((*&v12 & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v14 = fabs(self->_expiryTime);
  v15 = floor(v14 + 0.5);
  v16 = (v14 - v15) * 1.84467441e19;
  v17 = 2654435761u * (v15 - trunc(v15 * 5.42101086e-20) * 1.84467441e19);
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v17 += v16;
    }
  }

  else
  {
    v17 -= fabs(v16);
  }

LABEL_39:
  if ((*&v12 & 0x10000) == 0)
  {
    v18 = 0;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v19 = 0;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v18 = 2654435761 * self->_shouldRestoreLowGuidance;
  if ((*&v12 & 0x4000) == 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  v19 = 2654435761 * self->_avoidTolls;
  if ((*&v12 & 0x2000) != 0)
  {
LABEL_42:
    v20 = 2654435761 * self->_avoidHighways;
    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
LABEL_46:
  v21 = [(NSMutableArray *)self->_planningWaypoints hash];
  v22 = [(NSMutableArray *)self->_handlesForSharingETAs hash];
  v23 = [(NSData *)self->_companionRouteContextData hash];
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v24 = 2654435761 * self->_isPlayingTrace;
  }

  else
  {
    v24 = 0;
  }

  return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v13 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_113;
  }

  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage | *(v4 + 13))
  {
    if (![(GEOStorageRouteRequestStorage *)routeRequestStorage isEqual:?])
    {
      goto LABEL_113;
    }
  }

  originString = self->_originString;
  if (originString | *(v4 + 11))
  {
    if (![(NSString *)originString isEqual:?])
    {
      goto LABEL_113;
    }
  }

  destinationString = self->_destinationString;
  if (destinationString | *(v4 + 7))
  {
    if (![(NSString *)destinationString isEqual:?])
    {
      goto LABEL_113;
    }
  }

  has = self->_has;
  v9 = *(v4 + 37);
  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_departureTime != *(v4 + 4))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_113;
  }

  if (*&has)
  {
    if ((v9 & 1) == 0 || self->_arrivalTime != *(v4 + 1))
    {
      goto LABEL_113;
    }
  }

  else if (v9)
  {
    goto LABEL_113;
  }

  if ((*&has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_currentRouteIndex != *(v4 + 2))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_currentRouteStep != *(v4 + 3))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_displayMethod != *(v4 + 16))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_113;
  }

  transitPreferences = self->_transitPreferences;
  if (transitPreferences | *(v4 + 16))
  {
    if (![(DirectionsPlanTransitPreferences *)transitPreferences isEqual:?])
    {
      goto LABEL_113;
    }

    has = self->_has;
    v9 = *(v4 + 37);
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v9 & 0x200) == 0 || self->_routesPerInitialPage != *(v4 + 29))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x200) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_earlierPagesLoaded != *(v4 + 17))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_laterPagesLoaded != *(v4 + 20))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v9 & 0x100) == 0 || self->_routesPerEarlierPage != *(v4 + 28))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x100) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v9 & 0x400) == 0 || self->_routesPerLaterPage != *(v4 + 30))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x400) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v9 & 0x800) == 0 || self->_transitPrioritization != *(v4 + 34))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x800) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v9 & 0x1000) == 0 || self->_transitSurchargeOption != *(v4 + 35))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x1000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_expiryTime != *(v4 + 5))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_113;
    }

    if (self->_shouldRestoreLowGuidance)
    {
      if ((*(v4 + 147) & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (*(v4 + 147))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x10000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_113;
    }

    if (self->_avoidTolls)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (*(v4 + 145))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x4000) != 0)
  {
    goto LABEL_113;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_113;
    }

    if (self->_avoidHighways)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_113;
    }
  }

  else if ((v9 & 0x2000) != 0)
  {
    goto LABEL_113;
  }

  planningWaypoints = self->_planningWaypoints;
  if (planningWaypoints | *(v4 + 12) && ![(NSMutableArray *)planningWaypoints isEqual:?])
  {
    goto LABEL_113;
  }

  handlesForSharingETAs = self->_handlesForSharingETAs;
  if (handlesForSharingETAs | *(v4 + 9))
  {
    if (![(NSMutableArray *)handlesForSharingETAs isEqual:?])
    {
      goto LABEL_113;
    }
  }

  companionRouteContextData = self->_companionRouteContextData;
  if (companionRouteContextData | *(v4 + 6))
  {
    if (![(NSData *)companionRouteContextData isEqual:?])
    {
      goto LABEL_113;
    }
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    if ((*(v4 + 37) & 0x8000) != 0)
    {
      if (self->_isPlayingTrace)
      {
        if (*(v4 + 146))
        {
LABEL_111:
          v14 = 1;
          goto LABEL_114;
        }
      }

      else if (!*(v4 + 146))
      {
        goto LABEL_111;
      }
    }

LABEL_113:
    v14 = 0;
    goto LABEL_114;
  }

  v14 = (*(v4 + 37) & 0x8000) == 0;
LABEL_114:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOStorageRouteRequestStorage *)self->_routeRequestStorage copyWithZone:a3];
  v7 = v5[13];
  v5[13] = v6;

  v8 = [(NSString *)self->_originString copyWithZone:a3];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSString *)self->_destinationString copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v5[4] = *&self->_departureTime;
    *(v5 + 37) |= 8u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[1] = *&self->_arrivalTime;
  *(v5 + 37) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  v5[2] = self->_currentRouteIndex;
  *(v5 + 37) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_39:
  v5[3] = self->_currentRouteStep;
  *(v5 + 37) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v5 + 16) = self->_displayMethod;
    *(v5 + 37) |= 0x20u;
  }

LABEL_7:
  v13 = [(DirectionsPlanTransitPreferences *)self->_transitPreferences copyWithZone:a3];
  v14 = v5[16];
  v5[16] = v13;

  v15 = self->_has;
  if ((*&v15 & 0x200) != 0)
  {
    *(v5 + 29) = self->_routesPerInitialPage;
    *(v5 + 37) |= 0x200u;
    v15 = self->_has;
    if ((*&v15 & 0x40) == 0)
    {
LABEL_9:
      if ((*&v15 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v15 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 17) = self->_earlierPagesLoaded;
  *(v5 + 37) |= 0x40u;
  v15 = self->_has;
  if ((*&v15 & 0x80) == 0)
  {
LABEL_10:
    if ((*&v15 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 20) = self->_laterPagesLoaded;
  *(v5 + 37) |= 0x80u;
  v15 = self->_has;
  if ((*&v15 & 0x100) == 0)
  {
LABEL_11:
    if ((*&v15 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 28) = self->_routesPerEarlierPage;
  *(v5 + 37) |= 0x100u;
  v15 = self->_has;
  if ((*&v15 & 0x400) == 0)
  {
LABEL_12:
    if ((*&v15 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 30) = self->_routesPerLaterPage;
  *(v5 + 37) |= 0x400u;
  v15 = self->_has;
  if ((*&v15 & 0x800) == 0)
  {
LABEL_13:
    if ((*&v15 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 34) = self->_transitPrioritization;
  *(v5 + 37) |= 0x800u;
  v15 = self->_has;
  if ((*&v15 & 0x1000) == 0)
  {
LABEL_14:
    if ((*&v15 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 35) = self->_transitSurchargeOption;
  *(v5 + 37) |= 0x1000u;
  v15 = self->_has;
  if ((*&v15 & 0x10) == 0)
  {
LABEL_15:
    if ((*&v15 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v5[5] = *&self->_expiryTime;
  *(v5 + 37) |= 0x10u;
  v15 = self->_has;
  if ((*&v15 & 0x10000) == 0)
  {
LABEL_16:
    if ((*&v15 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 147) = self->_shouldRestoreLowGuidance;
  *(v5 + 37) |= 0x10000u;
  v15 = self->_has;
  if ((*&v15 & 0x4000) == 0)
  {
LABEL_17:
    if ((*&v15 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_50:
  *(v5 + 145) = self->_avoidTolls;
  *(v5 + 37) |= 0x4000u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_18:
    *(v5 + 144) = self->_avoidHighways;
    *(v5 + 37) |= 0x2000u;
  }

LABEL_19:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = self->_planningWaypoints;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v35 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addPlanningWaypoint:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v18);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = self->_handlesForSharingETAs;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v31 + 1) + 8 * v26) copyWithZone:{a3, v31}];
        [v5 addHandlesForSharingETA:v27];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v24);
  }

  v28 = [(NSData *)self->_companionRouteContextData copyWithZone:a3];
  v29 = v5[6];
  v5[6] = v28;

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v5 + 146) = self->_isPlayingTrace;
    *(v5 + 37) |= 0x8000u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_routeRequestStorage)
  {
    [v4 setRouteRequestStorage:?];
    v4 = v15;
  }

  if (self->_originString)
  {
    [v15 setOriginString:?];
    v4 = v15;
  }

  if (self->_destinationString)
  {
    [v15 setDestinationString:?];
    v4 = v15;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v4 + 4) = *&self->_departureTime;
    *(v4 + 37) |= 8u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_9:
      if ((*&has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 1) = *&self->_arrivalTime;
  *(v4 + 37) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 2) = self->_currentRouteIndex;
  *(v4 + 37) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_45:
  *(v4 + 3) = self->_currentRouteStep;
  *(v4 + 37) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    *(v4 + 16) = self->_displayMethod;
    *(v4 + 37) |= 0x20u;
  }

LABEL_13:
  if (self->_transitPreferences)
  {
    [v15 setTransitPreferences:?];
    v4 = v15;
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    *(v4 + 29) = self->_routesPerInitialPage;
    *(v4 + 37) |= 0x200u;
    v6 = self->_has;
    if ((*&v6 & 0x40) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  *(v4 + 17) = self->_earlierPagesLoaded;
  *(v4 + 37) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 20) = self->_laterPagesLoaded;
  *(v4 + 37) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 28) = self->_routesPerEarlierPage;
  *(v4 + 37) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 30) = self->_routesPerLaterPage;
  *(v4 + 37) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 34) = self->_transitPrioritization;
  *(v4 + 37) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 35) = self->_transitSurchargeOption;
  *(v4 + 37) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 5) = *&self->_expiryTime;
  *(v4 + 37) |= 0x10u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

LABEL_56:
    *(v4 + 145) = self->_avoidTolls;
    *(v4 + 37) |= 0x4000u;
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_55:
  *(v4 + 147) = self->_shouldRestoreLowGuidance;
  *(v4 + 37) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    goto LABEL_56;
  }

LABEL_25:
  if ((*&v6 & 0x2000) != 0)
  {
LABEL_26:
    *(v4 + 144) = self->_avoidHighways;
    *(v4 + 37) |= 0x2000u;
  }

LABEL_27:
  if ([(DirectionsPlan *)self planningWaypointsCount])
  {
    [v15 clearPlanningWaypoints];
    v7 = [(DirectionsPlan *)self planningWaypointsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(DirectionsPlan *)self planningWaypointAtIndex:i];
        [v15 addPlanningWaypoint:v10];
      }
    }
  }

  if ([(DirectionsPlan *)self handlesForSharingETAsCount])
  {
    [v15 clearHandlesForSharingETAs];
    v11 = [(DirectionsPlan *)self handlesForSharingETAsCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(DirectionsPlan *)self handlesForSharingETAAtIndex:j];
        [v15 addHandlesForSharingETA:v14];
      }
    }
  }

  if (self->_companionRouteContextData)
  {
    [v15 setCompanionRouteContextData:?];
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v15 + 146) = self->_isPlayingTrace;
    *(v15 + 37) |= 0x8000u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_routeRequestStorage)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_originString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationString)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_9:
      if ((*&has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_49:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
  if (self->_transitPreferences)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((*&v6 & 0x40) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteDoubleField();
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_60:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_26:
    PBDataWriterWriteBOOLField();
  }

LABEL_27:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_planningWaypoints;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_handlesForSharingETAs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if (self->_companionRouteContextData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage)
  {
    v5 = [(GEOStorageRouteRequestStorage *)routeRequestStorage dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"routeRequestStorage"];
  }

  originString = self->_originString;
  if (originString)
  {
    [v3 setObject:originString forKey:@"originString"];
  }

  destinationString = self->_destinationString;
  if (destinationString)
  {
    [v3 setObject:destinationString forKey:@"destinationString"];
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v9 = [NSNumber numberWithDouble:self->_departureTime];
    [v3 setObject:v9 forKey:@"departureTime"];

    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_9:
      if ((*&has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = [NSNumber numberWithDouble:self->_arrivalTime];
  [v3 setObject:v10 forKey:@"arrivalTime"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [NSNumber numberWithUnsignedLongLong:self->_currentRouteIndex];
  [v3 setObject:v11 forKey:@"currentRouteIndex"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = [NSNumber numberWithUnsignedLongLong:self->_currentRouteStep];
  [v3 setObject:v12 forKey:@"currentRouteStep"];

  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  displayMethod = self->_displayMethod;
  if (displayMethod >= 3)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_displayMethod];
  }

  else
  {
    v14 = off_101632C08[displayMethod];
  }

  [v3 setObject:v14 forKey:@"displayMethod"];

LABEL_21:
  transitPreferences = self->_transitPreferences;
  if (transitPreferences)
  {
    v16 = [(DirectionsPlanTransitPreferences *)transitPreferences dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"transitPreferences"];
  }

  v17 = self->_has;
  if ((*&v17 & 0x200) != 0)
  {
    v29 = [NSNumber numberWithUnsignedInt:self->_routesPerInitialPage];
    [v3 setObject:v29 forKey:@"routesPerInitialPage"];

    v17 = self->_has;
    if ((*&v17 & 0x40) == 0)
    {
LABEL_25:
      if ((*&v17 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_54;
    }
  }

  else if ((*&v17 & 0x40) == 0)
  {
    goto LABEL_25;
  }

  v30 = [NSNumber numberWithUnsignedInt:self->_earlierPagesLoaded];
  [v3 setObject:v30 forKey:@"earlierPagesLoaded"];

  v17 = self->_has;
  if ((*&v17 & 0x80) == 0)
  {
LABEL_26:
    if ((*&v17 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  v31 = [NSNumber numberWithUnsignedInt:self->_laterPagesLoaded];
  [v3 setObject:v31 forKey:@"laterPagesLoaded"];

  v17 = self->_has;
  if ((*&v17 & 0x100) == 0)
  {
LABEL_27:
    if ((*&v17 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  v32 = [NSNumber numberWithUnsignedInt:self->_routesPerEarlierPage];
  [v3 setObject:v32 forKey:@"routesPerEarlierPage"];

  v17 = self->_has;
  if ((*&v17 & 0x400) == 0)
  {
LABEL_28:
    if ((*&v17 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_56:
  v33 = [NSNumber numberWithUnsignedInt:self->_routesPerLaterPage];
  [v3 setObject:v33 forKey:@"routesPerLaterPage"];

  v17 = self->_has;
  if ((*&v17 & 0x800) == 0)
  {
LABEL_29:
    if ((*&v17 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_57:
  transitPrioritization = self->_transitPrioritization;
  if (transitPrioritization >= 4)
  {
    v35 = [NSString stringWithFormat:@"(unknown: %i)", self->_transitPrioritization];
  }

  else
  {
    v35 = off_101632C20[transitPrioritization];
  }

  [v3 setObject:v35 forKey:@"transitPrioritization"];

  v17 = self->_has;
  if ((*&v17 & 0x1000) == 0)
  {
LABEL_30:
    if ((*&v17 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v36 = [NSNumber numberWithInt:self->_transitSurchargeOption];
  [v3 setObject:v36 forKey:@"transitSurchargeOption"];

  v17 = self->_has;
  if ((*&v17 & 0x10) == 0)
  {
LABEL_31:
    if ((*&v17 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  v37 = [NSNumber numberWithDouble:self->_expiryTime];
  [v3 setObject:v37 forKey:@"expiryTime"];

  v17 = self->_has;
  if ((*&v17 & 0x8000) == 0)
  {
LABEL_32:
    if ((*&v17 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  v38 = [NSNumber numberWithBool:self->_isPlayingTrace];
  [v3 setObject:v38 forKey:@"isPlayingTrace"];

  v17 = self->_has;
  if ((*&v17 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v17 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  v39 = [NSNumber numberWithBool:self->_shouldRestoreLowGuidance];
  [v3 setObject:v39 forKey:@"shouldRestoreLowGuidance"];

  v17 = self->_has;
  if ((*&v17 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v17 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_65:
  v40 = [NSNumber numberWithBool:self->_avoidTolls];
  [v3 setObject:v40 forKey:@"avoidTolls"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_35:
    v18 = [NSNumber numberWithBool:self->_avoidHighways];
    [v3 setObject:v18 forKey:@"avoidHighways"];
  }

LABEL_36:
  if ([(NSMutableArray *)self->_planningWaypoints count])
  {
    v19 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_planningWaypoints, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = self->_planningWaypoints;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"planningWaypoint"];
  }

  handlesForSharingETAs = self->_handlesForSharingETAs;
  if (handlesForSharingETAs)
  {
    [v3 setObject:handlesForSharingETAs forKey:@"handlesForSharingETA"];
  }

  companionRouteContextData = self->_companionRouteContextData;
  if (companionRouteContextData)
  {
    [v3 setObject:companionRouteContextData forKey:@"companionRouteContextData"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = DirectionsPlan;
  v3 = [(DirectionsPlan *)&v7 description];
  v4 = [(DirectionsPlan *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)addHandlesForSharingETA:(id)a3
{
  v4 = a3;
  handlesForSharingETAs = self->_handlesForSharingETAs;
  v8 = v4;
  if (!handlesForSharingETAs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_handlesForSharingETAs;
    self->_handlesForSharingETAs = v6;

    v4 = v8;
    handlesForSharingETAs = self->_handlesForSharingETAs;
  }

  [(NSMutableArray *)handlesForSharingETAs addObject:v4];
}

- (void)addPlanningWaypoint:(id)a3
{
  v4 = a3;
  planningWaypoints = self->_planningWaypoints;
  v8 = v4;
  if (!planningWaypoints)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_planningWaypoints;
    self->_planningWaypoints = v6;

    v4 = v8;
    planningWaypoints = self->_planningWaypoints;
  }

  [(NSMutableArray *)planningWaypoints addObject:v4];
}

- (void)setHasAvoidHighways:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasAvoidTolls:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasShouldRestoreLowGuidance:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsPlayingTrace:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasExpiryTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasTransitSurchargeOption:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (int)StringAsTransitPrioritization:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TRANSIT_PRIORITIZE_DEFAULT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TRANSIT_PRIORITIZE_BY_TRAVEL_TIME"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TRANSIT_PRIORITIZE_BY_TRANSFER_COUNT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TRANSIT_PRIORITIZE_BY_WALKING_DISTANCE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transitPrioritizationAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_101632C20[a3];
  }

  return v4;
}

- (void)setHasTransitPrioritization:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)transitPrioritization
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_transitPrioritization;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRoutesPerLaterPage:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRoutesPerEarlierPage:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasLaterPagesLoaded:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasEarlierPagesLoaded:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRoutesPerInitialPage:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsDisplayMethod:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DirectionsSearch"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RoutePicking"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DirectionsStarted"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)displayMethodAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_101632C08[a3];
  }

  return v4;
}

- (void)setHasDisplayMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)displayMethod
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_displayMethod;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrentRouteStep:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCurrentRouteIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasDepartureTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

@end