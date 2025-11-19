@interface CLMiLoConnection
- (CLMiLoConnection)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (id)createCustomLocationOfInterestAtCurrentLocation;
- (id)labelObservationWithRequestIdentifier:(id)a3 withPlaceIdentifier:(id)a4;
- (id)labelObservationsWithStartDate:(id)a3 endDate:(id)a4 placeIdentifier:(id)a5;
- (id)purgeAllMiLoData;
- (id)removeCustomLocationOfInterestWithIdentifier:(id)a3;
- (id)removeLabels:(id)a3;
- (id)requestExportDatabase;
- (id)requestMiLoPrediction;
- (id)requestModelLearning;
- (id)requestObservation:(id)a3;
- (id)startUpdatingMicroLocationWithConfiguration:(id)a3;
- (id)stopUpdatingMicroLocation;
- (void)connectServiceWithIdentifier:(id)a3;
- (void)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4;
- (void)dealloc;
- (void)deleteServiceWithIdentifier:(id)a3;
- (void)disconnectServiceWithIdentifier:(id)a3;
- (void)queryMiLoConnectionStatus;
- (void)queryMyServices;
@end

@implementation CLMiLoConnection

- (CLMiLoConnection)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v11.receiver = self;
  v11.super_class = CLMiLoConnection;
  v6 = [(CLMiLoConnection *)&v11 init];
  if (v6)
  {
    v7 = [[CLMiLoConnectionInternal alloc] initWithInfo:v6 delegate:a3 delegateQueue:a4];
    v6->_internal = v7;
    internalQueue = v7->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19BA0A574;
    block[3] = &unk_1E753CC90;
    block[4] = v6;
    dispatch_sync(internalQueue, block);
  }

  return v6;
}

- (void)dealloc
{
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A670;
  block[3] = &unk_1E753CC90;
  block[4] = internal;
  dispatch_sync(internalQueue, block);

  v5.receiver = self;
  v5.super_class = CLMiLoConnection;
  [(CLMiLoConnection *)&v5 dealloc];
}

- (void)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4
{
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (a3 - 5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A7B0;
  block[3] = &unk_1E753EB08;
  block[5] = a4;
  block[6] = a3;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)deleteServiceWithIdentifier:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A890;
  block[3] = &unk_1E753CF38;
  block[4] = internal;
  block[5] = a3;
  dispatch_async(internalQueue, block);
}

- (void)queryMyServices
{
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A910;
  block[3] = &unk_1E753CC90;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)queryMiLoConnectionStatus
{
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A98C;
  block[3] = &unk_1E753CC90;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)connectServiceWithIdentifier:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AA64;
  block[3] = &unk_1E753CF38;
  block[4] = internal;
  block[5] = a3;
  dispatch_async(internalQueue, block);
}

- (void)disconnectServiceWithIdentifier:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AB40;
  block[3] = &unk_1E753CF38;
  block[4] = internal;
  block[5] = a3;
  dispatch_async(internalQueue, block);
}

- (id)requestMiLoPrediction
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0ABE0;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = v3;
  dispatch_async(internalQueue, v7);
  return v3;
}

- (id)requestObservation:(id)a3
{
  v5 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AC90;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = v5;
  block[6] = a3;
  dispatch_async(internalQueue, block);
  return v5;
}

- (id)labelObservationWithRequestIdentifier:(id)a3 withPlaceIdentifier:(id)a4
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0ADCC;
  block[3] = &unk_1E753EB30;
  block[4] = internal;
  block[5] = v8;
  block[6] = a4;
  block[7] = a3;
  dispatch_async(internalQueue, block);
  return v8;
}

- (id)labelObservationsWithStartDate:(id)a3 endDate:(id)a4 placeIdentifier:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_4;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AF5C;
  block[3] = &unk_1E753EB58;
  block[4] = internal;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = v10;
  dispatch_async(internalQueue, block);
  return v10;
}

- (id)removeLabels:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B05C;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = a3;
  block[6] = v5;
  dispatch_async(internalQueue, block);
  return v5;
}

- (id)removeCustomLocationOfInterestWithIdentifier:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B154;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = a3;
  block[6] = v5;
  dispatch_async(internalQueue, block);
  return v5;
}

- (id)startUpdatingMicroLocationWithConfiguration:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B24C;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = a3;
  block[6] = v5;
  dispatch_async(internalQueue, block);
  return v5;
}

- (id)stopUpdatingMicroLocation
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B2F0;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = v3;
  dispatch_async(internalQueue, v7);
  return v3;
}

- (id)requestModelLearning
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B390;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = v3;
  dispatch_async(internalQueue, v7);
  return v3;
}

- (id)purgeAllMiLoData
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B430;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = v3;
  dispatch_async(internalQueue, v7);
  return v3;
}

- (id)requestExportDatabase
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B4D0;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = v3;
  dispatch_async(internalQueue, v7);
  return v3;
}

- (id)createCustomLocationOfInterestAtCurrentLocation
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B570;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = v3;
  dispatch_async(internalQueue, v7);
  return v3;
}

@end