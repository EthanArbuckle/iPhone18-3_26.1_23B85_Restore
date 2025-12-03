@interface CellularCallCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEndStatusCountConnectedCdma:(id)cdma;
- (void)addEndStatusCountConnectedGw:(id)gw;
- (void)addEndStatusCountNotConnectedCdma:(id)cdma;
- (void)addEndStatusCountNotConnectedGw:(id)gw;
- (void)addReleaseCauseCountConnected:(id)connected;
- (void)addReleaseCauseCountConnectedGsm:(id)gsm;
- (void)addReleaseCauseCountConnectedWcdma:(id)wcdma;
- (void)addReleaseCauseCountNotConnected:(id)connected;
- (void)addReleaseCauseCountNotConnectedGsm:(id)gsm;
- (void)addReleaseCauseCountNotConnectedWcdma:(id)wcdma;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumConnectedCallsCdma:(BOOL)cdma;
- (void)setHasNumConnectedCallsGsm:(BOOL)gsm;
- (void)setHasNumConnectedCallsGw:(BOOL)gw;
- (void)setHasNumConnectedCallsWcdma:(BOOL)wcdma;
- (void)setHasNumMultiRabEndCalls:(BOOL)calls;
- (void)setHasNumMultiRabEverCalls:(BOOL)calls;
- (void)setHasNumNormalReleaseCallsCdma:(BOOL)cdma;
- (void)setHasNumNormalReleaseCallsGsm:(BOOL)gsm;
- (void)setHasNumNormalReleaseCallsGw:(BOOL)gw;
- (void)setHasNumNormalReleaseCallsWcdma:(BOOL)wcdma;
- (void)setHasNumTotalCallsCdma:(BOOL)cdma;
- (void)setHasNumTotalCallsGsm:(BOOL)gsm;
- (void)setHasNumTotalCallsGw:(BOOL)gw;
- (void)setHasNumTotalCallsWcdma:(BOOL)wcdma;
- (void)setHasPeriodSeconds:(BOOL)seconds;
- (void)setHasTotalConnectedSecondsCdma:(BOOL)cdma;
- (void)setHasTotalConnectedSecondsGsm:(BOOL)gsm;
- (void)setHasTotalConnectedSecondsWcdma:(BOOL)wcdma;
- (void)writeTo:(id)to;
@end

@implementation CellularCallCount

- (void)setHasPeriodSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasNumTotalCallsCdma:(BOOL)cdma
{
  if (cdma)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasNumConnectedCallsCdma:(BOOL)cdma
{
  if (cdma)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasNumNormalReleaseCallsCdma:(BOOL)cdma
{
  if (cdma)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)addEndStatusCountConnectedCdma:(id)cdma
{
  cdmaCopy = cdma;
  endStatusCountConnectedCdmas = self->_endStatusCountConnectedCdmas;
  v8 = cdmaCopy;
  if (!endStatusCountConnectedCdmas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endStatusCountConnectedCdmas;
    self->_endStatusCountConnectedCdmas = v6;

    cdmaCopy = v8;
    endStatusCountConnectedCdmas = self->_endStatusCountConnectedCdmas;
  }

  [(NSMutableArray *)endStatusCountConnectedCdmas addObject:cdmaCopy];
}

- (void)addEndStatusCountNotConnectedCdma:(id)cdma
{
  cdmaCopy = cdma;
  endStatusCountNotConnectedCdmas = self->_endStatusCountNotConnectedCdmas;
  v8 = cdmaCopy;
  if (!endStatusCountNotConnectedCdmas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endStatusCountNotConnectedCdmas;
    self->_endStatusCountNotConnectedCdmas = v6;

    cdmaCopy = v8;
    endStatusCountNotConnectedCdmas = self->_endStatusCountNotConnectedCdmas;
  }

  [(NSMutableArray *)endStatusCountNotConnectedCdmas addObject:cdmaCopy];
}

- (void)setHasTotalConnectedSecondsCdma:(BOOL)cdma
{
  if (cdma)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasNumTotalCallsGw:(BOOL)gw
{
  if (gw)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasNumConnectedCallsGw:(BOOL)gw
{
  if (gw)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasNumNormalReleaseCallsGw:(BOOL)gw
{
  if (gw)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)addEndStatusCountConnectedGw:(id)gw
{
  gwCopy = gw;
  endStatusCountConnectedGws = self->_endStatusCountConnectedGws;
  v8 = gwCopy;
  if (!endStatusCountConnectedGws)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endStatusCountConnectedGws;
    self->_endStatusCountConnectedGws = v6;

    gwCopy = v8;
    endStatusCountConnectedGws = self->_endStatusCountConnectedGws;
  }

  [(NSMutableArray *)endStatusCountConnectedGws addObject:gwCopy];
}

- (void)addEndStatusCountNotConnectedGw:(id)gw
{
  gwCopy = gw;
  endStatusCountNotConnectedGws = self->_endStatusCountNotConnectedGws;
  v8 = gwCopy;
  if (!endStatusCountNotConnectedGws)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endStatusCountNotConnectedGws;
    self->_endStatusCountNotConnectedGws = v6;

    gwCopy = v8;
    endStatusCountNotConnectedGws = self->_endStatusCountNotConnectedGws;
  }

  [(NSMutableArray *)endStatusCountNotConnectedGws addObject:gwCopy];
}

- (void)setHasNumMultiRabEverCalls:(BOOL)calls
{
  if (calls)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasNumMultiRabEndCalls:(BOOL)calls
{
  if (calls)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)addReleaseCauseCountConnected:(id)connected
{
  connectedCopy = connected;
  releaseCauseCountConnecteds = self->_releaseCauseCountConnecteds;
  v8 = connectedCopy;
  if (!releaseCauseCountConnecteds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_releaseCauseCountConnecteds;
    self->_releaseCauseCountConnecteds = v6;

    connectedCopy = v8;
    releaseCauseCountConnecteds = self->_releaseCauseCountConnecteds;
  }

  [(NSMutableArray *)releaseCauseCountConnecteds addObject:connectedCopy];
}

- (void)addReleaseCauseCountNotConnected:(id)connected
{
  connectedCopy = connected;
  releaseCauseCountNotConnecteds = self->_releaseCauseCountNotConnecteds;
  v8 = connectedCopy;
  if (!releaseCauseCountNotConnecteds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_releaseCauseCountNotConnecteds;
    self->_releaseCauseCountNotConnecteds = v6;

    connectedCopy = v8;
    releaseCauseCountNotConnecteds = self->_releaseCauseCountNotConnecteds;
  }

  [(NSMutableArray *)releaseCauseCountNotConnecteds addObject:connectedCopy];
}

- (void)setHasNumTotalCallsGsm:(BOOL)gsm
{
  if (gsm)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasNumConnectedCallsGsm:(BOOL)gsm
{
  if (gsm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasNumNormalReleaseCallsGsm:(BOOL)gsm
{
  if (gsm)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)addReleaseCauseCountConnectedGsm:(id)gsm
{
  gsmCopy = gsm;
  releaseCauseCountConnectedGsms = self->_releaseCauseCountConnectedGsms;
  v8 = gsmCopy;
  if (!releaseCauseCountConnectedGsms)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_releaseCauseCountConnectedGsms;
    self->_releaseCauseCountConnectedGsms = v6;

    gsmCopy = v8;
    releaseCauseCountConnectedGsms = self->_releaseCauseCountConnectedGsms;
  }

  [(NSMutableArray *)releaseCauseCountConnectedGsms addObject:gsmCopy];
}

- (void)addReleaseCauseCountNotConnectedGsm:(id)gsm
{
  gsmCopy = gsm;
  releaseCauseCountNotConnectedGsms = self->_releaseCauseCountNotConnectedGsms;
  v8 = gsmCopy;
  if (!releaseCauseCountNotConnectedGsms)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_releaseCauseCountNotConnectedGsms;
    self->_releaseCauseCountNotConnectedGsms = v6;

    gsmCopy = v8;
    releaseCauseCountNotConnectedGsms = self->_releaseCauseCountNotConnectedGsms;
  }

  [(NSMutableArray *)releaseCauseCountNotConnectedGsms addObject:gsmCopy];
}

- (void)setHasTotalConnectedSecondsGsm:(BOOL)gsm
{
  if (gsm)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasNumTotalCallsWcdma:(BOOL)wcdma
{
  if (wcdma)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasNumConnectedCallsWcdma:(BOOL)wcdma
{
  if (wcdma)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasNumNormalReleaseCallsWcdma:(BOOL)wcdma
{
  if (wcdma)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)addReleaseCauseCountConnectedWcdma:(id)wcdma
{
  wcdmaCopy = wcdma;
  releaseCauseCountConnectedWcdmas = self->_releaseCauseCountConnectedWcdmas;
  v8 = wcdmaCopy;
  if (!releaseCauseCountConnectedWcdmas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_releaseCauseCountConnectedWcdmas;
    self->_releaseCauseCountConnectedWcdmas = v6;

    wcdmaCopy = v8;
    releaseCauseCountConnectedWcdmas = self->_releaseCauseCountConnectedWcdmas;
  }

  [(NSMutableArray *)releaseCauseCountConnectedWcdmas addObject:wcdmaCopy];
}

- (void)addReleaseCauseCountNotConnectedWcdma:(id)wcdma
{
  wcdmaCopy = wcdma;
  releaseCauseCountNotConnectedWcdmas = self->_releaseCauseCountNotConnectedWcdmas;
  v8 = wcdmaCopy;
  if (!releaseCauseCountNotConnectedWcdmas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_releaseCauseCountNotConnectedWcdmas;
    self->_releaseCauseCountNotConnectedWcdmas = v6;

    wcdmaCopy = v8;
    releaseCauseCountNotConnectedWcdmas = self->_releaseCauseCountNotConnectedWcdmas;
  }

  [(NSMutableArray *)releaseCauseCountNotConnectedWcdmas addObject:wcdmaCopy];
}

- (void)setHasTotalConnectedSecondsWcdma:(BOOL)wcdma
{
  if (wcdma)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularCallCount;
  v3 = [(CellularCallCount *)&v7 description];
  dictionaryRepresentation = [(CellularCallCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v88 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v88 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_120;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  v89 = [NSNumber numberWithUnsignedInt:self->_periodSeconds];
  [v3 setObject:v89 forKey:@"period_seconds"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_121;
  }

LABEL_120:
  v90 = [NSNumber numberWithUnsignedInt:self->_numTotalCallsCdma];
  [v3 setObject:v90 forKey:@"num_total_calls_cdma"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_121:
  v91 = [NSNumber numberWithUnsignedInt:self->_numConnectedCallsCdma];
  [v3 setObject:v91 forKey:@"num_connected_calls_cdma"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithUnsignedInt:self->_numNormalReleaseCallsCdma];
    [v3 setObject:v5 forKey:@"num_normal_release_calls_cdma"];
  }

LABEL_7:
  if ([(NSMutableArray *)self->_endStatusCountConnectedCdmas count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_endStatusCountConnectedCdmas, "count")}];
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v7 = self->_endStatusCountConnectedCdmas;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v136 objects:v149 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v137;
      do
      {
        v11 = 0;
        do
        {
          if (*v137 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v136 + 1) + 8 * v11) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v136 objects:v149 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"end_status_count_connected_cdma"];
  }

  if ([(NSMutableArray *)self->_endStatusCountNotConnectedCdmas count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_endStatusCountNotConnectedCdmas, "count")}];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v14 = self->_endStatusCountNotConnectedCdmas;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v132 objects:v148 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v133;
      do
      {
        v18 = 0;
        do
        {
          if (*v133 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v132 + 1) + 8 * v18) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v132 objects:v148 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"end_status_count_not_connected_cdma"];
  }

  v20 = self->_has;
  if ((*&v20 & 0x10000) != 0)
  {
    v92 = [NSNumber numberWithUnsignedInt:self->_totalConnectedSecondsCdma];
    [v3 setObject:v92 forKey:@"total_connected_seconds_cdma"];

    v20 = self->_has;
    if ((*&v20 & 0x2000) == 0)
    {
LABEL_27:
      if ((*&v20 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_125;
    }
  }

  else if ((*&v20 & 0x2000) == 0)
  {
    goto LABEL_27;
  }

  v93 = [NSNumber numberWithUnsignedInt:self->_numTotalCallsGw];
  [v3 setObject:v93 forKey:@"num_total_calls_gw"];

  v20 = self->_has;
  if ((*&v20 & 8) == 0)
  {
LABEL_28:
    if ((*&v20 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_125:
  v94 = [NSNumber numberWithUnsignedInt:self->_numConnectedCallsGw];
  [v3 setObject:v94 forKey:@"num_connected_calls_gw"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_29:
    v21 = [NSNumber numberWithUnsignedInt:self->_numNormalReleaseCallsGw];
    [v3 setObject:v21 forKey:@"num_normal_release_calls_gw"];
  }

LABEL_30:
  if ([(NSMutableArray *)self->_endStatusCountConnectedGws count])
  {
    v22 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_endStatusCountConnectedGws, "count")}];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v23 = self->_endStatusCountConnectedGws;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v128 objects:v147 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v129;
      do
      {
        v27 = 0;
        do
        {
          if (*v129 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v128 + 1) + 8 * v27) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation3];

          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v128 objects:v147 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKey:@"end_status_count_connected_gw"];
  }

  if ([(NSMutableArray *)self->_endStatusCountNotConnectedGws count])
  {
    v29 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_endStatusCountNotConnectedGws, "count")}];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v30 = self->_endStatusCountNotConnectedGws;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v124 objects:v146 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v125;
      do
      {
        v34 = 0;
        do
        {
          if (*v125 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation4 = [*(*(&v124 + 1) + 8 * v34) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation4];

          v34 = v34 + 1;
        }

        while (v32 != v34);
        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v124 objects:v146 count:16];
      }

      while (v32);
    }

    [v3 setObject:v29 forKey:@"end_status_count_not_connected_gw"];
  }

  v36 = self->_has;
  if ((*&v36 & 0x40) != 0)
  {
    v37 = [NSNumber numberWithUnsignedInt:self->_numMultiRabEverCalls];
    [v3 setObject:v37 forKey:@"num_multi_rab_ever_calls"];

    v36 = self->_has;
  }

  if ((*&v36 & 0x20) != 0)
  {
    v38 = [NSNumber numberWithUnsignedInt:self->_numMultiRabEndCalls];
    [v3 setObject:v38 forKey:@"num_multi_rab_end_calls"];
  }

  if ([(NSMutableArray *)self->_releaseCauseCountConnecteds count])
  {
    v39 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_releaseCauseCountConnecteds, "count")}];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v40 = self->_releaseCauseCountConnecteds;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v120 objects:v145 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v121;
      do
      {
        v44 = 0;
        do
        {
          if (*v121 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation5 = [*(*(&v120 + 1) + 8 * v44) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation5];

          v44 = v44 + 1;
        }

        while (v42 != v44);
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v120 objects:v145 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"release_cause_count_connected"];
  }

  if ([(NSMutableArray *)self->_releaseCauseCountNotConnecteds count])
  {
    v46 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_releaseCauseCountNotConnecteds, "count")}];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v47 = self->_releaseCauseCountNotConnecteds;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v116 objects:v144 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v117;
      do
      {
        v51 = 0;
        do
        {
          if (*v117 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation6 = [*(*(&v116 + 1) + 8 * v51) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation6];

          v51 = v51 + 1;
        }

        while (v49 != v51);
        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v116 objects:v144 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKey:@"release_cause_count_not_connected"];
  }

  v53 = self->_has;
  if ((*&v53 & 0x1000) != 0)
  {
    v95 = [NSNumber numberWithUnsignedInt:self->_numTotalCallsGsm];
    [v3 setObject:v95 forKey:@"num_total_calls_gsm"];

    v53 = self->_has;
    if ((*&v53 & 4) == 0)
    {
LABEL_72:
      if ((*&v53 & 0x100) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v53 & 4) == 0)
  {
    goto LABEL_72;
  }

  v96 = [NSNumber numberWithUnsignedInt:self->_numConnectedCallsGsm];
  [v3 setObject:v96 forKey:@"num_connected_calls_gsm"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_73:
    v54 = [NSNumber numberWithUnsignedInt:self->_numNormalReleaseCallsGsm];
    [v3 setObject:v54 forKey:@"num_normal_release_calls_gsm"];
  }

LABEL_74:
  if ([(NSMutableArray *)self->_releaseCauseCountConnectedGsms count])
  {
    v55 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_releaseCauseCountConnectedGsms, "count")}];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v56 = self->_releaseCauseCountConnectedGsms;
    v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v112 objects:v143 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v113;
      do
      {
        v60 = 0;
        do
        {
          if (*v113 != v59)
          {
            objc_enumerationMutation(v56);
          }

          dictionaryRepresentation7 = [*(*(&v112 + 1) + 8 * v60) dictionaryRepresentation];
          [v55 addObject:dictionaryRepresentation7];

          v60 = v60 + 1;
        }

        while (v58 != v60);
        v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v112 objects:v143 count:16];
      }

      while (v58);
    }

    [v3 setObject:v55 forKey:@"release_cause_count_connected_gsm"];
  }

  if ([(NSMutableArray *)self->_releaseCauseCountNotConnectedGsms count])
  {
    v62 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_releaseCauseCountNotConnectedGsms, "count")}];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v63 = self->_releaseCauseCountNotConnectedGsms;
    v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v108 objects:v142 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v109;
      do
      {
        v67 = 0;
        do
        {
          if (*v109 != v66)
          {
            objc_enumerationMutation(v63);
          }

          dictionaryRepresentation8 = [*(*(&v108 + 1) + 8 * v67) dictionaryRepresentation];
          [v62 addObject:dictionaryRepresentation8];

          v67 = v67 + 1;
        }

        while (v65 != v67);
        v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v108 objects:v142 count:16];
      }

      while (v65);
    }

    [v3 setObject:v62 forKey:@"release_cause_count_not_connected_gsm"];
  }

  v69 = self->_has;
  if ((*&v69 & 0x20000) != 0)
  {
    v97 = [NSNumber numberWithUnsignedInt:self->_totalConnectedSecondsGsm];
    [v3 setObject:v97 forKey:@"total_connected_seconds_gsm"];

    v69 = self->_has;
    if ((*&v69 & 0x4000) == 0)
    {
LABEL_94:
      if ((*&v69 & 0x10) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v69 & 0x4000) == 0)
  {
    goto LABEL_94;
  }

  v98 = [NSNumber numberWithUnsignedInt:self->_numTotalCallsWcdma];
  [v3 setObject:v98 forKey:@"num_total_calls_wcdma"];

  v69 = self->_has;
  if ((*&v69 & 0x10) == 0)
  {
LABEL_95:
    if ((*&v69 & 0x400) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_132:
  v99 = [NSNumber numberWithUnsignedInt:self->_numConnectedCallsWcdma];
  [v3 setObject:v99 forKey:@"num_connected_calls_wcdma"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_96:
    v70 = [NSNumber numberWithUnsignedInt:self->_numNormalReleaseCallsWcdma];
    [v3 setObject:v70 forKey:@"num_normal_release_calls_wcdma"];
  }

LABEL_97:
  if ([(NSMutableArray *)self->_releaseCauseCountConnectedWcdmas count])
  {
    v71 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_releaseCauseCountConnectedWcdmas, "count")}];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v72 = self->_releaseCauseCountConnectedWcdmas;
    v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v104 objects:v141 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v105;
      do
      {
        v76 = 0;
        do
        {
          if (*v105 != v75)
          {
            objc_enumerationMutation(v72);
          }

          dictionaryRepresentation9 = [*(*(&v104 + 1) + 8 * v76) dictionaryRepresentation];
          [v71 addObject:dictionaryRepresentation9];

          v76 = v76 + 1;
        }

        while (v74 != v76);
        v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v104 objects:v141 count:16];
      }

      while (v74);
    }

    [v3 setObject:v71 forKey:@"release_cause_count_connected_wcdma"];
  }

  if ([(NSMutableArray *)self->_releaseCauseCountNotConnectedWcdmas count])
  {
    v78 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_releaseCauseCountNotConnectedWcdmas, "count")}];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v79 = self->_releaseCauseCountNotConnectedWcdmas;
    v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v100 objects:v140 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v101;
      do
      {
        v83 = 0;
        do
        {
          if (*v101 != v82)
          {
            objc_enumerationMutation(v79);
          }

          dictionaryRepresentation10 = [*(*(&v100 + 1) + 8 * v83) dictionaryRepresentation];
          [v78 addObject:dictionaryRepresentation10];

          v83 = v83 + 1;
        }

        while (v81 != v83);
        v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v100 objects:v140 count:16];
      }

      while (v81);
    }

    [v3 setObject:v78 forKey:@"release_cause_count_not_connected_wcdma"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v85 = [NSNumber numberWithUnsignedInt:self->_totalConnectedSecondsWcdma];
    [v3 setObject:v85 forKey:@"total_connected_seconds_wcdma"];
  }

  v86 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_99;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  periodSeconds = self->_periodSeconds;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_100;
  }

LABEL_99:
  numTotalCallsCdma = self->_numTotalCallsCdma;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_100:
  numConnectedCallsCdma = self->_numConnectedCallsCdma;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    numNormalReleaseCallsCdma = self->_numNormalReleaseCallsCdma;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v7 = self->_endStatusCountConnectedCdmas;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v125 objects:v138 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v126;
    do
    {
      v11 = 0;
      do
      {
        if (*v126 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v125 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v125 objects:v138 count:16];
    }

    while (v9);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v13 = self->_endStatusCountNotConnectedCdmas;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v121 objects:v137 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v122;
    do
    {
      v17 = 0;
      do
      {
        if (*v122 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v121 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v121 objects:v137 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((*&v19 & 0x10000) != 0)
  {
    totalConnectedSecondsCdma = self->_totalConnectedSecondsCdma;
    PBDataWriterWriteUint32Field();
    v19 = self->_has;
    if ((*&v19 & 0x40) == 0)
    {
LABEL_23:
      if ((*&v19 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&v19 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  numMultiRabEverCalls = self->_numMultiRabEverCalls;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_24:
    numMultiRabEndCalls = self->_numMultiRabEndCalls;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v21 = self->_releaseCauseCountConnecteds;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v117 objects:v136 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v118;
    do
    {
      v25 = 0;
      do
      {
        if (*v118 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v117 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v117 objects:v136 count:16];
    }

    while (v23);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v27 = self->_releaseCauseCountNotConnecteds;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v113 objects:v135 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v114;
    do
    {
      v31 = 0;
      do
      {
        if (*v114 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v113 + 1) + 8 * v31);
        PBDataWriterWriteSubmessage();
        v31 = v31 + 1;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v113 objects:v135 count:16];
    }

    while (v29);
  }

  v33 = self->_has;
  if ((*&v33 & 0x2000) != 0)
  {
    numTotalCallsGw = self->_numTotalCallsGw;
    PBDataWriterWriteUint32Field();
    v33 = self->_has;
    if ((*&v33 & 8) == 0)
    {
LABEL_41:
      if ((*&v33 & 0x200) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v33 & 8) == 0)
  {
    goto LABEL_41;
  }

  numConnectedCallsGw = self->_numConnectedCallsGw;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_42:
    numNormalReleaseCallsGw = self->_numNormalReleaseCallsGw;
    PBDataWriterWriteUint32Field();
  }

LABEL_43:
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v35 = self->_endStatusCountConnectedGws;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v109 objects:v134 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v110;
    do
    {
      v39 = 0;
      do
      {
        if (*v110 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v109 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v109 objects:v134 count:16];
    }

    while (v37);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v41 = self->_endStatusCountNotConnectedGws;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v105 objects:v133 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v106;
    do
    {
      v45 = 0;
      do
      {
        if (*v106 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v105 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        v45 = v45 + 1;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v105 objects:v133 count:16];
    }

    while (v43);
  }

  v47 = self->_has;
  if ((*&v47 & 0x1000) != 0)
  {
    numTotalCallsGsm = self->_numTotalCallsGsm;
    PBDataWriterWriteUint32Field();
    v47 = self->_has;
    if ((*&v47 & 4) == 0)
    {
LABEL_59:
      if ((*&v47 & 0x100) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v47 & 4) == 0)
  {
    goto LABEL_59;
  }

  numConnectedCallsGsm = self->_numConnectedCallsGsm;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_60:
    numNormalReleaseCallsGsm = self->_numNormalReleaseCallsGsm;
    PBDataWriterWriteUint32Field();
  }

LABEL_61:
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v49 = self->_releaseCauseCountConnectedGsms;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v101 objects:v132 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v102;
    do
    {
      v53 = 0;
      do
      {
        if (*v102 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v101 + 1) + 8 * v53);
        PBDataWriterWriteSubmessage();
        v53 = v53 + 1;
      }

      while (v51 != v53);
      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v101 objects:v132 count:16];
    }

    while (v51);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v55 = self->_releaseCauseCountNotConnectedGsms;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v97 objects:v131 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v98;
    do
    {
      v59 = 0;
      do
      {
        if (*v98 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v97 + 1) + 8 * v59);
        PBDataWriterWriteSubmessage();
        v59 = v59 + 1;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v97 objects:v131 count:16];
    }

    while (v57);
  }

  v61 = self->_has;
  if ((*&v61 & 0x20000) != 0)
  {
    totalConnectedSecondsGsm = self->_totalConnectedSecondsGsm;
    PBDataWriterWriteUint32Field();
    v61 = self->_has;
    if ((*&v61 & 0x4000) == 0)
    {
LABEL_77:
      if ((*&v61 & 0x10) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_113;
    }
  }

  else if ((*&v61 & 0x4000) == 0)
  {
    goto LABEL_77;
  }

  numTotalCallsWcdma = self->_numTotalCallsWcdma;
  PBDataWriterWriteUint32Field();
  v61 = self->_has;
  if ((*&v61 & 0x10) == 0)
  {
LABEL_78:
    if ((*&v61 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_113:
  numConnectedCallsWcdma = self->_numConnectedCallsWcdma;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_79:
    numNormalReleaseCallsWcdma = self->_numNormalReleaseCallsWcdma;
    PBDataWriterWriteUint32Field();
  }

LABEL_80:
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v63 = self->_releaseCauseCountConnectedWcdmas;
  v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v93 objects:v130 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v94;
    do
    {
      v67 = 0;
      do
      {
        if (*v94 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v93 + 1) + 8 * v67);
        PBDataWriterWriteSubmessage();
        v67 = v67 + 1;
      }

      while (v65 != v67);
      v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v93 objects:v130 count:16];
    }

    while (v65);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v69 = self->_releaseCauseCountNotConnectedWcdmas;
  v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v89 objects:v129 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v90;
    do
    {
      v73 = 0;
      do
      {
        if (*v90 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v89 + 1) + 8 * v73);
        PBDataWriterWriteSubmessage();
        v73 = v73 + 1;
      }

      while (v71 != v73);
      v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v89 objects:v129 count:16];
    }

    while (v71);
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    totalConnectedSecondsWcdma = self->_totalConnectedSecondsWcdma;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 43) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_71;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 26) = self->_periodSeconds;
  *(toCopy + 43) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_72:
    *(toCopy + 12) = self->_numConnectedCallsCdma;
    *(toCopy + 43) |= 2u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_71:
  *(toCopy + 22) = self->_numTotalCallsCdma;
  *(toCopy + 43) |= 0x800u;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_72;
  }

LABEL_5:
  if ((*&has & 0x80) != 0)
  {
LABEL_6:
    *(toCopy + 18) = self->_numNormalReleaseCallsCdma;
    *(toCopy + 43) |= 0x80u;
  }

LABEL_7:
  v50 = toCopy;
  if ([(CellularCallCount *)self endStatusCountConnectedCdmasCount])
  {
    [v50 clearEndStatusCountConnectedCdmas];
    endStatusCountConnectedCdmasCount = [(CellularCallCount *)self endStatusCountConnectedCdmasCount];
    if (endStatusCountConnectedCdmasCount)
    {
      v7 = endStatusCountConnectedCdmasCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularCallCount *)self endStatusCountConnectedCdmaAtIndex:i];
        [v50 addEndStatusCountConnectedCdma:v9];
      }
    }
  }

  if ([(CellularCallCount *)self endStatusCountNotConnectedCdmasCount])
  {
    [v50 clearEndStatusCountNotConnectedCdmas];
    endStatusCountNotConnectedCdmasCount = [(CellularCallCount *)self endStatusCountNotConnectedCdmasCount];
    if (endStatusCountNotConnectedCdmasCount)
    {
      v11 = endStatusCountNotConnectedCdmasCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CellularCallCount *)self endStatusCountNotConnectedCdmaAtIndex:j];
        [v50 addEndStatusCountNotConnectedCdma:v13];
      }
    }
  }

  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_75:
    v50[17] = self->_numMultiRabEverCalls;
    v50[43] |= 0x40u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v50[40] = self->_totalConnectedSecondsCdma;
  v50[43] |= 0x10000u;
  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    goto LABEL_75;
  }

LABEL_17:
  if ((*&v14 & 0x20) != 0)
  {
LABEL_18:
    v50[16] = self->_numMultiRabEndCalls;
    v50[43] |= 0x20u;
  }

LABEL_19:
  if ([(CellularCallCount *)self releaseCauseCountConnectedsCount])
  {
    [v50 clearReleaseCauseCountConnecteds];
    releaseCauseCountConnectedsCount = [(CellularCallCount *)self releaseCauseCountConnectedsCount];
    if (releaseCauseCountConnectedsCount)
    {
      v16 = releaseCauseCountConnectedsCount;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(CellularCallCount *)self releaseCauseCountConnectedAtIndex:k];
        [v50 addReleaseCauseCountConnected:v18];
      }
    }
  }

  if ([(CellularCallCount *)self releaseCauseCountNotConnectedsCount])
  {
    [v50 clearReleaseCauseCountNotConnecteds];
    releaseCauseCountNotConnectedsCount = [(CellularCallCount *)self releaseCauseCountNotConnectedsCount];
    if (releaseCauseCountNotConnectedsCount)
    {
      v20 = releaseCauseCountNotConnectedsCount;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(CellularCallCount *)self releaseCauseCountNotConnectedAtIndex:m];
        [v50 addReleaseCauseCountNotConnected:v22];
      }
    }
  }

  v23 = self->_has;
  if ((*&v23 & 0x2000) == 0)
  {
    if ((*&v23 & 8) == 0)
    {
      goto LABEL_29;
    }

LABEL_78:
    v50[14] = self->_numConnectedCallsGw;
    v50[43] |= 8u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v50[24] = self->_numTotalCallsGw;
  v50[43] |= 0x2000u;
  v23 = self->_has;
  if ((*&v23 & 8) != 0)
  {
    goto LABEL_78;
  }

LABEL_29:
  if ((*&v23 & 0x200) != 0)
  {
LABEL_30:
    v50[20] = self->_numNormalReleaseCallsGw;
    v50[43] |= 0x200u;
  }

LABEL_31:
  if ([(CellularCallCount *)self endStatusCountConnectedGwsCount])
  {
    [v50 clearEndStatusCountConnectedGws];
    endStatusCountConnectedGwsCount = [(CellularCallCount *)self endStatusCountConnectedGwsCount];
    if (endStatusCountConnectedGwsCount)
    {
      v25 = endStatusCountConnectedGwsCount;
      for (n = 0; n != v25; ++n)
      {
        v27 = [(CellularCallCount *)self endStatusCountConnectedGwAtIndex:n];
        [v50 addEndStatusCountConnectedGw:v27];
      }
    }
  }

  if ([(CellularCallCount *)self endStatusCountNotConnectedGwsCount])
  {
    [v50 clearEndStatusCountNotConnectedGws];
    endStatusCountNotConnectedGwsCount = [(CellularCallCount *)self endStatusCountNotConnectedGwsCount];
    if (endStatusCountNotConnectedGwsCount)
    {
      v29 = endStatusCountNotConnectedGwsCount;
      for (ii = 0; ii != v29; ++ii)
      {
        v31 = [(CellularCallCount *)self endStatusCountNotConnectedGwAtIndex:ii];
        [v50 addEndStatusCountNotConnectedGw:v31];
      }
    }
  }

  v32 = self->_has;
  if ((*&v32 & 0x1000) == 0)
  {
    if ((*&v32 & 4) == 0)
    {
      goto LABEL_41;
    }

LABEL_81:
    v50[13] = self->_numConnectedCallsGsm;
    v50[43] |= 4u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v50[23] = self->_numTotalCallsGsm;
  v50[43] |= 0x1000u;
  v32 = self->_has;
  if ((*&v32 & 4) != 0)
  {
    goto LABEL_81;
  }

LABEL_41:
  if ((*&v32 & 0x100) != 0)
  {
LABEL_42:
    v50[19] = self->_numNormalReleaseCallsGsm;
    v50[43] |= 0x100u;
  }

LABEL_43:
  if ([(CellularCallCount *)self releaseCauseCountConnectedGsmsCount])
  {
    [v50 clearReleaseCauseCountConnectedGsms];
    releaseCauseCountConnectedGsmsCount = [(CellularCallCount *)self releaseCauseCountConnectedGsmsCount];
    if (releaseCauseCountConnectedGsmsCount)
    {
      v34 = releaseCauseCountConnectedGsmsCount;
      for (jj = 0; jj != v34; ++jj)
      {
        v36 = [(CellularCallCount *)self releaseCauseCountConnectedGsmAtIndex:jj];
        [v50 addReleaseCauseCountConnectedGsm:v36];
      }
    }
  }

  if ([(CellularCallCount *)self releaseCauseCountNotConnectedGsmsCount])
  {
    [v50 clearReleaseCauseCountNotConnectedGsms];
    releaseCauseCountNotConnectedGsmsCount = [(CellularCallCount *)self releaseCauseCountNotConnectedGsmsCount];
    if (releaseCauseCountNotConnectedGsmsCount)
    {
      v38 = releaseCauseCountNotConnectedGsmsCount;
      for (kk = 0; kk != v38; ++kk)
      {
        v40 = [(CellularCallCount *)self releaseCauseCountNotConnectedGsmAtIndex:kk];
        [v50 addReleaseCauseCountNotConnectedGsm:v40];
      }
    }
  }

  v41 = self->_has;
  if ((*&v41 & 0x20000) != 0)
  {
    v50[41] = self->_totalConnectedSecondsGsm;
    v50[43] |= 0x20000u;
    v41 = self->_has;
    if ((*&v41 & 0x4000) == 0)
    {
LABEL_53:
      if ((*&v41 & 0x10) == 0)
      {
        goto LABEL_54;
      }

LABEL_85:
      v50[15] = self->_numConnectedCallsWcdma;
      v50[43] |= 0x10u;
      if ((*&self->_has & 0x400) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v41 & 0x4000) == 0)
  {
    goto LABEL_53;
  }

  v50[25] = self->_numTotalCallsWcdma;
  v50[43] |= 0x4000u;
  v41 = self->_has;
  if ((*&v41 & 0x10) != 0)
  {
    goto LABEL_85;
  }

LABEL_54:
  if ((*&v41 & 0x400) != 0)
  {
LABEL_55:
    v50[21] = self->_numNormalReleaseCallsWcdma;
    v50[43] |= 0x400u;
  }

LABEL_56:
  if ([(CellularCallCount *)self releaseCauseCountConnectedWcdmasCount])
  {
    [v50 clearReleaseCauseCountConnectedWcdmas];
    releaseCauseCountConnectedWcdmasCount = [(CellularCallCount *)self releaseCauseCountConnectedWcdmasCount];
    if (releaseCauseCountConnectedWcdmasCount)
    {
      v43 = releaseCauseCountConnectedWcdmasCount;
      for (mm = 0; mm != v43; ++mm)
      {
        v45 = [(CellularCallCount *)self releaseCauseCountConnectedWcdmaAtIndex:mm];
        [v50 addReleaseCauseCountConnectedWcdma:v45];
      }
    }
  }

  if ([(CellularCallCount *)self releaseCauseCountNotConnectedWcdmasCount])
  {
    [v50 clearReleaseCauseCountNotConnectedWcdmas];
    releaseCauseCountNotConnectedWcdmasCount = [(CellularCallCount *)self releaseCauseCountNotConnectedWcdmasCount];
    if (releaseCauseCountNotConnectedWcdmasCount)
    {
      v47 = releaseCauseCountNotConnectedWcdmasCount;
      for (nn = 0; nn != v47; ++nn)
      {
        v49 = [(CellularCallCount *)self releaseCauseCountNotConnectedWcdmaAtIndex:nn];
        [v50 addReleaseCauseCountNotConnectedWcdma:v49];
      }
    }
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v50[42] = self->_totalConnectedSecondsWcdma;
    v50[43] |= 0x40000u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 1) = self->_timestamp;
    v5[43] |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_99;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  v5[26] = self->_periodSeconds;
  v5[43] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_100;
  }

LABEL_99:
  v5[22] = self->_numTotalCallsCdma;
  v5[43] |= 0x800u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_100:
  v5[12] = self->_numConnectedCallsCdma;
  v5[43] |= 2u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v5[18] = self->_numNormalReleaseCallsCdma;
    v5[43] |= 0x80u;
  }

LABEL_7:
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v8 = self->_endStatusCountConnectedCdmas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v111;
    do
    {
      v12 = 0;
      do
      {
        if (*v111 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v110 + 1) + 8 * v12) copyWithZone:zone];
        [v6 addEndStatusCountConnectedCdma:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v10);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v14 = self->_endStatusCountNotConnectedCdmas;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v107;
    do
    {
      v18 = 0;
      do
      {
        if (*v107 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v106 + 1) + 8 * v18) copyWithZone:zone];
        [v6 addEndStatusCountNotConnectedCdma:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v106 objects:v122 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((*&v20 & 0x10000) != 0)
  {
    v6[40] = self->_totalConnectedSecondsCdma;
    v6[43] |= 0x10000u;
    v20 = self->_has;
    if ((*&v20 & 0x40) == 0)
    {
LABEL_23:
      if ((*&v20 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&v20 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v6[17] = self->_numMultiRabEverCalls;
  v6[43] |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_24:
    v6[16] = self->_numMultiRabEndCalls;
    v6[43] |= 0x20u;
  }

LABEL_25:
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v21 = self->_releaseCauseCountConnecteds;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v102 objects:v121 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v103;
    do
    {
      v25 = 0;
      do
      {
        if (*v103 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v102 + 1) + 8 * v25) copyWithZone:zone];
        [v6 addReleaseCauseCountConnected:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v102 objects:v121 count:16];
    }

    while (v23);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v27 = self->_releaseCauseCountNotConnecteds;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v98 objects:v120 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v99;
    do
    {
      v31 = 0;
      do
      {
        if (*v99 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v98 + 1) + 8 * v31) copyWithZone:zone];
        [v6 addReleaseCauseCountNotConnected:v32];

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v98 objects:v120 count:16];
    }

    while (v29);
  }

  v33 = self->_has;
  if ((*&v33 & 0x2000) != 0)
  {
    v6[24] = self->_numTotalCallsGw;
    v6[43] |= 0x2000u;
    v33 = self->_has;
    if ((*&v33 & 8) == 0)
    {
LABEL_41:
      if ((*&v33 & 0x200) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v33 & 8) == 0)
  {
    goto LABEL_41;
  }

  v6[14] = self->_numConnectedCallsGw;
  v6[43] |= 8u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_42:
    v6[20] = self->_numNormalReleaseCallsGw;
    v6[43] |= 0x200u;
  }

LABEL_43:
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v34 = self->_endStatusCountConnectedGws;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v94 objects:v119 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v95;
    do
    {
      v38 = 0;
      do
      {
        if (*v95 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v94 + 1) + 8 * v38) copyWithZone:zone];
        [v6 addEndStatusCountConnectedGw:v39];

        v38 = v38 + 1;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v94 objects:v119 count:16];
    }

    while (v36);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v40 = self->_endStatusCountNotConnectedGws;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v90 objects:v118 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v91;
    do
    {
      v44 = 0;
      do
      {
        if (*v91 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v90 + 1) + 8 * v44) copyWithZone:zone];
        [v6 addEndStatusCountNotConnectedGw:v45];

        v44 = v44 + 1;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v90 objects:v118 count:16];
    }

    while (v42);
  }

  v46 = self->_has;
  if ((*&v46 & 0x1000) != 0)
  {
    v6[23] = self->_numTotalCallsGsm;
    v6[43] |= 0x1000u;
    v46 = self->_has;
    if ((*&v46 & 4) == 0)
    {
LABEL_59:
      if ((*&v46 & 0x100) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v46 & 4) == 0)
  {
    goto LABEL_59;
  }

  v6[13] = self->_numConnectedCallsGsm;
  v6[43] |= 4u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_60:
    v6[19] = self->_numNormalReleaseCallsGsm;
    v6[43] |= 0x100u;
  }

LABEL_61:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v47 = self->_releaseCauseCountConnectedGsms;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v86 objects:v117 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v87;
    do
    {
      v51 = 0;
      do
      {
        if (*v87 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v86 + 1) + 8 * v51) copyWithZone:zone];
        [v6 addReleaseCauseCountConnectedGsm:v52];

        v51 = v51 + 1;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v86 objects:v117 count:16];
    }

    while (v49);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v53 = self->_releaseCauseCountNotConnectedGsms;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v82 objects:v116 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v83;
    do
    {
      v57 = 0;
      do
      {
        if (*v83 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v82 + 1) + 8 * v57) copyWithZone:zone];
        [v6 addReleaseCauseCountNotConnectedGsm:v58];

        v57 = v57 + 1;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v82 objects:v116 count:16];
    }

    while (v55);
  }

  v59 = self->_has;
  if ((*&v59 & 0x20000) != 0)
  {
    v6[41] = self->_totalConnectedSecondsGsm;
    v6[43] |= 0x20000u;
    v59 = self->_has;
    if ((*&v59 & 0x4000) == 0)
    {
LABEL_77:
      if ((*&v59 & 0x10) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_113;
    }
  }

  else if ((*&v59 & 0x4000) == 0)
  {
    goto LABEL_77;
  }

  v6[25] = self->_numTotalCallsWcdma;
  v6[43] |= 0x4000u;
  v59 = self->_has;
  if ((*&v59 & 0x10) == 0)
  {
LABEL_78:
    if ((*&v59 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_113:
  v6[15] = self->_numConnectedCallsWcdma;
  v6[43] |= 0x10u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_79:
    v6[21] = self->_numNormalReleaseCallsWcdma;
    v6[43] |= 0x400u;
  }

LABEL_80:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v60 = self->_releaseCauseCountConnectedWcdmas;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v78 objects:v115 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v79;
    do
    {
      v64 = 0;
      do
      {
        if (*v79 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v78 + 1) + 8 * v64) copyWithZone:zone];
        [v6 addReleaseCauseCountConnectedWcdma:v65];

        v64 = v64 + 1;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v78 objects:v115 count:16];
    }

    while (v62);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v66 = self->_releaseCauseCountNotConnectedWcdmas;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v74 objects:v114 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v75;
    do
    {
      v70 = 0;
      do
      {
        if (*v75 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v74 + 1) + 8 * v70) copyWithZone:{zone, v74}];
        [v6 addReleaseCauseCountNotConnectedWcdma:v71];

        v70 = v70 + 1;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v74 objects:v114 count:16];
    }

    while (v68);
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v6[42] = self->_totalConnectedSecondsWcdma;
    v6[43] |= 0x40000u;
  }

  v72 = v6;

  return v72;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_117;
  }

  has = self->_has;
  v6 = *(equalCopy + 43);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_117;
    }
  }

  else if (v6)
  {
LABEL_117:
    v26 = 0;
    goto LABEL_118;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_periodSeconds != *(equalCopy + 26))
    {
      goto LABEL_117;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_117;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_numTotalCallsCdma != *(equalCopy + 22))
    {
      goto LABEL_117;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_117;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_numConnectedCallsCdma != *(equalCopy + 12))
    {
      goto LABEL_117;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_117;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_numNormalReleaseCallsCdma != *(equalCopy + 18))
    {
      goto LABEL_117;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_117;
  }

  endStatusCountConnectedCdmas = self->_endStatusCountConnectedCdmas;
  if (endStatusCountConnectedCdmas | *(equalCopy + 2) && ![(NSMutableArray *)endStatusCountConnectedCdmas isEqual:?])
  {
    goto LABEL_117;
  }

  endStatusCountNotConnectedCdmas = self->_endStatusCountNotConnectedCdmas;
  if (endStatusCountNotConnectedCdmas | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)endStatusCountNotConnectedCdmas isEqual:?])
    {
      goto LABEL_117;
    }
  }

  v9 = self->_has;
  v10 = *(equalCopy + 43);
  if ((*&v9 & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_totalConnectedSecondsCdma != *(equalCopy + 40))
    {
      goto LABEL_117;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v9 & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_numMultiRabEverCalls != *(equalCopy + 17))
    {
      goto LABEL_117;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v9 & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_numMultiRabEndCalls != *(equalCopy + 16))
    {
      goto LABEL_117;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_117;
  }

  releaseCauseCountConnecteds = self->_releaseCauseCountConnecteds;
  if (releaseCauseCountConnecteds | *(equalCopy + 16) && ![(NSMutableArray *)releaseCauseCountConnecteds isEqual:?])
  {
    goto LABEL_117;
  }

  releaseCauseCountNotConnecteds = self->_releaseCauseCountNotConnecteds;
  if (releaseCauseCountNotConnecteds | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)releaseCauseCountNotConnecteds isEqual:?])
    {
      goto LABEL_117;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 43);
  if ((*&v13 & 0x2000) != 0)
  {
    if ((v14 & 0x2000) == 0 || self->_numTotalCallsGw != *(equalCopy + 24))
    {
      goto LABEL_117;
    }
  }

  else if ((v14 & 0x2000) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v13 & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_numConnectedCallsGw != *(equalCopy + 14))
    {
      goto LABEL_117;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v13 & 0x200) != 0)
  {
    if ((v14 & 0x200) == 0 || self->_numNormalReleaseCallsGw != *(equalCopy + 20))
    {
      goto LABEL_117;
    }
  }

  else if ((v14 & 0x200) != 0)
  {
    goto LABEL_117;
  }

  endStatusCountConnectedGws = self->_endStatusCountConnectedGws;
  if (endStatusCountConnectedGws | *(equalCopy + 3) && ![(NSMutableArray *)endStatusCountConnectedGws isEqual:?])
  {
    goto LABEL_117;
  }

  endStatusCountNotConnectedGws = self->_endStatusCountNotConnectedGws;
  if (endStatusCountNotConnectedGws | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)endStatusCountNotConnectedGws isEqual:?])
    {
      goto LABEL_117;
    }
  }

  v17 = self->_has;
  v18 = *(equalCopy + 43);
  if ((*&v17 & 0x1000) != 0)
  {
    if ((v18 & 0x1000) == 0 || self->_numTotalCallsGsm != *(equalCopy + 23))
    {
      goto LABEL_117;
    }
  }

  else if ((v18 & 0x1000) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v17 & 4) != 0)
  {
    if ((v18 & 4) == 0 || self->_numConnectedCallsGsm != *(equalCopy + 13))
    {
      goto LABEL_117;
    }
  }

  else if ((v18 & 4) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v17 & 0x100) != 0)
  {
    if ((v18 & 0x100) == 0 || self->_numNormalReleaseCallsGsm != *(equalCopy + 19))
    {
      goto LABEL_117;
    }
  }

  else if ((v18 & 0x100) != 0)
  {
    goto LABEL_117;
  }

  releaseCauseCountConnectedGsms = self->_releaseCauseCountConnectedGsms;
  if (releaseCauseCountConnectedGsms | *(equalCopy + 14) && ![(NSMutableArray *)releaseCauseCountConnectedGsms isEqual:?])
  {
    goto LABEL_117;
  }

  releaseCauseCountNotConnectedGsms = self->_releaseCauseCountNotConnectedGsms;
  if (releaseCauseCountNotConnectedGsms | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)releaseCauseCountNotConnectedGsms isEqual:?])
    {
      goto LABEL_117;
    }
  }

  v21 = self->_has;
  v22 = *(equalCopy + 43);
  if ((*&v21 & 0x20000) != 0)
  {
    if ((v22 & 0x20000) == 0 || self->_totalConnectedSecondsGsm != *(equalCopy + 41))
    {
      goto LABEL_117;
    }
  }

  else if ((v22 & 0x20000) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v21 & 0x4000) != 0)
  {
    if ((v22 & 0x4000) == 0 || self->_numTotalCallsWcdma != *(equalCopy + 25))
    {
      goto LABEL_117;
    }
  }

  else if ((v22 & 0x4000) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v21 & 0x10) != 0)
  {
    if ((v22 & 0x10) == 0 || self->_numConnectedCallsWcdma != *(equalCopy + 15))
    {
      goto LABEL_117;
    }
  }

  else if ((v22 & 0x10) != 0)
  {
    goto LABEL_117;
  }

  if ((*&v21 & 0x400) != 0)
  {
    if ((v22 & 0x400) == 0 || self->_numNormalReleaseCallsWcdma != *(equalCopy + 21))
    {
      goto LABEL_117;
    }
  }

  else if ((v22 & 0x400) != 0)
  {
    goto LABEL_117;
  }

  releaseCauseCountConnectedWcdmas = self->_releaseCauseCountConnectedWcdmas;
  if (releaseCauseCountConnectedWcdmas | *(equalCopy + 15) && ![(NSMutableArray *)releaseCauseCountConnectedWcdmas isEqual:?])
  {
    goto LABEL_117;
  }

  releaseCauseCountNotConnectedWcdmas = self->_releaseCauseCountNotConnectedWcdmas;
  if (releaseCauseCountNotConnectedWcdmas | *(equalCopy + 18))
  {
    if (![(NSMutableArray *)releaseCauseCountNotConnectedWcdmas isEqual:?])
    {
      goto LABEL_117;
    }
  }

  v25 = *(equalCopy + 43);
  if ((*(&self->_has + 2) & 4) != 0)
  {
    if ((v25 & 0x40000) == 0 || self->_totalConnectedSecondsWcdma != *(equalCopy + 42))
    {
      goto LABEL_117;
    }

    v26 = 1;
  }

  else
  {
    v26 = (v25 & 0x40000) == 0;
  }

LABEL_118:

  return v26;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v37 = 2654435761u * self->_timestamp;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v36 = 2654435761 * self->_periodSeconds;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v37 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v36 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_4:
    v35 = 2654435761 * self->_numTotalCallsCdma;
    if ((*&has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v34 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v35 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v34 = 2654435761 * self->_numConnectedCallsCdma;
  if ((*&has & 0x80) != 0)
  {
LABEL_6:
    v33 = 2654435761 * self->_numNormalReleaseCallsCdma;
    goto LABEL_12;
  }

LABEL_11:
  v33 = 0;
LABEL_12:
  v32 = [(NSMutableArray *)self->_endStatusCountConnectedCdmas hash];
  v31 = [(NSMutableArray *)self->_endStatusCountNotConnectedCdmas hash];
  v4 = self->_has;
  if ((*&v4 & 0x10000) == 0)
  {
    v30 = 0;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v29 = 0;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v30 = 2654435761 * self->_totalConnectedSecondsCdma;
  if ((*&v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v29 = 2654435761 * self->_numMultiRabEverCalls;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_15:
    v28 = 2654435761 * self->_numMultiRabEndCalls;
    goto LABEL_19;
  }

LABEL_18:
  v28 = 0;
LABEL_19:
  v27 = [(NSMutableArray *)self->_releaseCauseCountConnecteds hash];
  v26 = [(NSMutableArray *)self->_releaseCauseCountNotConnecteds hash];
  v5 = self->_has;
  if ((*&v5 & 0x2000) == 0)
  {
    v25 = 0;
    if ((*&v5 & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v24 = 0;
    if ((*&v5 & 0x200) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v25 = 2654435761 * self->_numTotalCallsGw;
  if ((*&v5 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v24 = 2654435761 * self->_numConnectedCallsGw;
  if ((*&v5 & 0x200) != 0)
  {
LABEL_22:
    v23 = 2654435761 * self->_numNormalReleaseCallsGw;
    goto LABEL_26;
  }

LABEL_25:
  v23 = 0;
LABEL_26:
  v22 = [(NSMutableArray *)self->_endStatusCountConnectedGws hash];
  v21 = [(NSMutableArray *)self->_endStatusCountNotConnectedGws hash];
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
    v20 = 0;
    if ((*&v6 & 4) != 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v19 = 0;
    if ((*&v6 & 0x100) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  v20 = 2654435761 * self->_numTotalCallsGsm;
  if ((*&v6 & 4) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v19 = 2654435761 * self->_numConnectedCallsGsm;
  if ((*&v6 & 0x100) != 0)
  {
LABEL_29:
    v18 = 2654435761 * self->_numNormalReleaseCallsGsm;
    goto LABEL_33;
  }

LABEL_32:
  v18 = 0;
LABEL_33:
  v7 = [(NSMutableArray *)self->_releaseCauseCountConnectedGsms hash];
  v8 = [(NSMutableArray *)self->_releaseCauseCountNotConnectedGsms hash];
  v9 = self->_has;
  if ((*&v9 & 0x20000) != 0)
  {
    v10 = 2654435761 * self->_totalConnectedSecondsGsm;
    if ((*&v9 & 0x4000) != 0)
    {
LABEL_35:
      v11 = 2654435761 * self->_numTotalCallsWcdma;
      if ((*&v9 & 0x10) != 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v12 = 0;
      if ((*&v9 & 0x400) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0;
    if ((*&v9 & 0x4000) != 0)
    {
      goto LABEL_35;
    }
  }

  v11 = 0;
  if ((*&v9 & 0x10) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v12 = 2654435761 * self->_numConnectedCallsWcdma;
  if ((*&v9 & 0x400) != 0)
  {
LABEL_37:
    v13 = 2654435761 * self->_numNormalReleaseCallsWcdma;
    goto LABEL_42;
  }

LABEL_41:
  v13 = 0;
LABEL_42:
  v14 = [(NSMutableArray *)self->_releaseCauseCountConnectedWcdmas hash];
  v15 = [(NSMutableArray *)self->_releaseCauseCountNotConnectedWcdmas hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v16 = 2654435761 * self->_totalConnectedSecondsWcdma;
  }

  else
  {
    v16 = 0;
  }

  return v36 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 43);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 43);
    if ((v6 & 0x8000) == 0)
    {
LABEL_3:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_99;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  self->_periodSeconds = *(fromCopy + 26);
  *&self->_has |= 0x8000u;
  v6 = *(fromCopy + 43);
  if ((v6 & 0x800) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_numTotalCallsCdma = *(fromCopy + 22);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 43);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_100:
  self->_numConnectedCallsCdma = *(fromCopy + 12);
  *&self->_has |= 2u;
  if ((*(fromCopy + 43) & 0x80) != 0)
  {
LABEL_6:
    self->_numNormalReleaseCallsCdma = *(fromCopy + 18);
    *&self->_has |= 0x80u;
  }

LABEL_7:
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v98;
    do
    {
      v11 = 0;
      do
      {
        if (*v98 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularCallCount *)self addEndStatusCountConnectedCdma:*(*(&v97 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v9);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v12 = *(v5 + 4);
  v13 = [v12 countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v94;
    do
    {
      v16 = 0;
      do
      {
        if (*v94 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CellularCallCount *)self addEndStatusCountNotConnectedCdma:*(*(&v93 + 1) + 8 * v16)];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 43);
  if ((v17 & 0x10000) != 0)
  {
    self->_totalConnectedSecondsCdma = *(v5 + 40);
    *&self->_has |= 0x10000u;
    v17 = *(v5 + 43);
    if ((v17 & 0x40) == 0)
    {
LABEL_23:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v17 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  self->_numMultiRabEverCalls = *(v5 + 17);
  *&self->_has |= 0x40u;
  if ((*(v5 + 43) & 0x20) != 0)
  {
LABEL_24:
    self->_numMultiRabEndCalls = *(v5 + 16);
    *&self->_has |= 0x20u;
  }

LABEL_25:
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v18 = *(v5 + 16);
  v19 = [v18 countByEnumeratingWithState:&v89 objects:v108 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v90;
    do
    {
      v22 = 0;
      do
      {
        if (*v90 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(CellularCallCount *)self addReleaseCauseCountConnected:*(*(&v89 + 1) + 8 * v22)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v89 objects:v108 count:16];
    }

    while (v20);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v23 = *(v5 + 19);
  v24 = [v23 countByEnumeratingWithState:&v85 objects:v107 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v86;
    do
    {
      v27 = 0;
      do
      {
        if (*v86 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(CellularCallCount *)self addReleaseCauseCountNotConnected:*(*(&v85 + 1) + 8 * v27)];
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v85 objects:v107 count:16];
    }

    while (v25);
  }

  v28 = *(v5 + 43);
  if ((v28 & 0x2000) != 0)
  {
    self->_numTotalCallsGw = *(v5 + 24);
    *&self->_has |= 0x2000u;
    v28 = *(v5 + 43);
    if ((v28 & 8) == 0)
    {
LABEL_41:
      if ((v28 & 0x200) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((v28 & 8) == 0)
  {
    goto LABEL_41;
  }

  self->_numConnectedCallsGw = *(v5 + 14);
  *&self->_has |= 8u;
  if ((*(v5 + 43) & 0x200) != 0)
  {
LABEL_42:
    self->_numNormalReleaseCallsGw = *(v5 + 20);
    *&self->_has |= 0x200u;
  }

LABEL_43:
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v29 = *(v5 + 3);
  v30 = [v29 countByEnumeratingWithState:&v81 objects:v106 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v82;
    do
    {
      v33 = 0;
      do
      {
        if (*v82 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(CellularCallCount *)self addEndStatusCountConnectedGw:*(*(&v81 + 1) + 8 * v33)];
        v33 = v33 + 1;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v81 objects:v106 count:16];
    }

    while (v31);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v34 = *(v5 + 5);
  v35 = [v34 countByEnumeratingWithState:&v77 objects:v105 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v78;
    do
    {
      v38 = 0;
      do
      {
        if (*v78 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(CellularCallCount *)self addEndStatusCountNotConnectedGw:*(*(&v77 + 1) + 8 * v38)];
        v38 = v38 + 1;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v77 objects:v105 count:16];
    }

    while (v36);
  }

  v39 = *(v5 + 43);
  if ((v39 & 0x1000) != 0)
  {
    self->_numTotalCallsGsm = *(v5 + 23);
    *&self->_has |= 0x1000u;
    v39 = *(v5 + 43);
    if ((v39 & 4) == 0)
    {
LABEL_59:
      if ((v39 & 0x100) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v39 & 4) == 0)
  {
    goto LABEL_59;
  }

  self->_numConnectedCallsGsm = *(v5 + 13);
  *&self->_has |= 4u;
  if ((*(v5 + 43) & 0x100) != 0)
  {
LABEL_60:
    self->_numNormalReleaseCallsGsm = *(v5 + 19);
    *&self->_has |= 0x100u;
  }

LABEL_61:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = *(v5 + 14);
  v41 = [v40 countByEnumeratingWithState:&v73 objects:v104 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v74;
    do
    {
      v44 = 0;
      do
      {
        if (*v74 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(CellularCallCount *)self addReleaseCauseCountConnectedGsm:*(*(&v73 + 1) + 8 * v44)];
        v44 = v44 + 1;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v73 objects:v104 count:16];
    }

    while (v42);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v45 = *(v5 + 17);
  v46 = [v45 countByEnumeratingWithState:&v69 objects:v103 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v70;
    do
    {
      v49 = 0;
      do
      {
        if (*v70 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(CellularCallCount *)self addReleaseCauseCountNotConnectedGsm:*(*(&v69 + 1) + 8 * v49)];
        v49 = v49 + 1;
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v69 objects:v103 count:16];
    }

    while (v47);
  }

  v50 = *(v5 + 43);
  if ((v50 & 0x20000) != 0)
  {
    self->_totalConnectedSecondsGsm = *(v5 + 41);
    *&self->_has |= 0x20000u;
    v50 = *(v5 + 43);
    if ((v50 & 0x4000) == 0)
    {
LABEL_77:
      if ((v50 & 0x10) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_113;
    }
  }

  else if ((v50 & 0x4000) == 0)
  {
    goto LABEL_77;
  }

  self->_numTotalCallsWcdma = *(v5 + 25);
  *&self->_has |= 0x4000u;
  v50 = *(v5 + 43);
  if ((v50 & 0x10) == 0)
  {
LABEL_78:
    if ((v50 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_113:
  self->_numConnectedCallsWcdma = *(v5 + 15);
  *&self->_has |= 0x10u;
  if ((*(v5 + 43) & 0x400) != 0)
  {
LABEL_79:
    self->_numNormalReleaseCallsWcdma = *(v5 + 21);
    *&self->_has |= 0x400u;
  }

LABEL_80:
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = *(v5 + 15);
  v52 = [v51 countByEnumeratingWithState:&v65 objects:v102 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v66;
    do
    {
      v55 = 0;
      do
      {
        if (*v66 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [(CellularCallCount *)self addReleaseCauseCountConnectedWcdma:*(*(&v65 + 1) + 8 * v55)];
        v55 = v55 + 1;
      }

      while (v53 != v55);
      v53 = [v51 countByEnumeratingWithState:&v65 objects:v102 count:16];
    }

    while (v53);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v56 = *(v5 + 18);
  v57 = [v56 countByEnumeratingWithState:&v61 objects:v101 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v62;
    do
    {
      v60 = 0;
      do
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [(CellularCallCount *)self addReleaseCauseCountNotConnectedWcdma:*(*(&v61 + 1) + 8 * v60), v61];
        v60 = v60 + 1;
      }

      while (v58 != v60);
      v58 = [v56 countByEnumeratingWithState:&v61 objects:v101 count:16];
    }

    while (v58);
  }

  if ((*(v5 + 174) & 4) != 0)
  {
    self->_totalConnectedSecondsWcdma = *(v5 + 42);
    *&self->_has |= 0x40000u;
  }
}

@end