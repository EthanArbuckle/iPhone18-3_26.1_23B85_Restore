@interface CLMiLoConnection
- (CLMiLoConnection)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (id)createCustomLocationOfInterestAtCurrentLocation;
- (id)labelObservationWithRequestIdentifier:(id)identifier withPlaceIdentifier:(id)placeIdentifier;
- (id)labelObservationsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier;
- (id)purgeAllMiLoData;
- (id)removeCustomLocationOfInterestWithIdentifier:(id)identifier;
- (id)removeLabels:(id)labels;
- (id)requestExportDatabase;
- (id)requestMiLoPrediction;
- (id)requestModelLearning;
- (id)requestObservation:(id)observation;
- (id)startUpdatingMicroLocationWithConfiguration:(id)configuration;
- (id)stopUpdatingMicroLocation;
- (void)connectServiceWithIdentifier:(id)identifier;
- (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types;
- (void)dealloc;
- (void)deleteServiceWithIdentifier:(id)identifier;
- (void)disconnectServiceWithIdentifier:(id)identifier;
- (void)queryMiLoConnectionStatus;
- (void)queryMyServices;
@end

@implementation CLMiLoConnection

- (CLMiLoConnection)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  v11.receiver = self;
  v11.super_class = CLMiLoConnection;
  v6 = [(CLMiLoConnection *)&v11 init];
  if (v6)
  {
    v7 = [[CLMiLoConnectionInternal alloc] initWithInfo:v6 delegate:delegate delegateQueue:queue];
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

- (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types
{
  if (!types)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (type - 5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0A7B0;
  block[3] = &unk_1E753EB08;
  block[5] = types;
  block[6] = type;
  block[4] = internal;
  dispatch_async(internalQueue, block);
}

- (void)deleteServiceWithIdentifier:(id)identifier
{
  if (!identifier)
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
  block[5] = identifier;
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

- (void)connectServiceWithIdentifier:(id)identifier
{
  if (!identifier)
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
  block[5] = identifier;
  dispatch_async(internalQueue, block);
}

- (void)disconnectServiceWithIdentifier:(id)identifier
{
  if (!identifier)
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
  block[5] = identifier;
  dispatch_async(internalQueue, block);
}

- (id)requestMiLoPrediction
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0ABE0;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = uUID;
  dispatch_async(internalQueue, v7);
  return uUID;
}

- (id)requestObservation:(id)observation
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AC90;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = uUID;
  block[6] = observation;
  dispatch_async(internalQueue, block);
  return uUID;
}

- (id)labelObservationWithRequestIdentifier:(id)identifier withPlaceIdentifier:(id)placeIdentifier
{
  if (!identifier)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (placeIdentifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!placeIdentifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0ADCC;
  block[3] = &unk_1E753EB30;
  block[4] = internal;
  block[5] = uUID;
  block[6] = placeIdentifier;
  block[7] = identifier;
  dispatch_async(internalQueue, block);
  return uUID;
}

- (id)labelObservationsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier
{
  if (date)
  {
    if (endDate)
    {
      goto LABEL_3;
    }

LABEL_6:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (identifier)
    {
      goto LABEL_4;
    }

LABEL_7:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_4;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!endDate)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!identifier)
  {
    goto LABEL_7;
  }

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0AF5C;
  block[3] = &unk_1E753EB58;
  block[4] = internal;
  block[5] = date;
  block[6] = endDate;
  block[7] = identifier;
  block[8] = uUID;
  dispatch_async(internalQueue, block);
  return uUID;
}

- (id)removeLabels:(id)labels
{
  if (!labels)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B05C;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = labels;
  block[6] = uUID;
  dispatch_async(internalQueue, block);
  return uUID;
}

- (id)removeCustomLocationOfInterestWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B154;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = identifier;
  block[6] = uUID;
  dispatch_async(internalQueue, block);
  return uUID;
}

- (id)startUpdatingMicroLocationWithConfiguration:(id)configuration
{
  if (!configuration)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19BA0B24C;
  block[3] = &unk_1E753D098;
  block[4] = internal;
  block[5] = configuration;
  block[6] = uUID;
  dispatch_async(internalQueue, block);
  return uUID;
}

- (id)stopUpdatingMicroLocation
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B2F0;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = uUID;
  dispatch_async(internalQueue, v7);
  return uUID;
}

- (id)requestModelLearning
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B390;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = uUID;
  dispatch_async(internalQueue, v7);
  return uUID;
}

- (id)purgeAllMiLoData
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B430;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = uUID;
  dispatch_async(internalQueue, v7);
  return uUID;
}

- (id)requestExportDatabase
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B4D0;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = uUID;
  dispatch_async(internalQueue, v7);
  return uUID;
}

- (id)createCustomLocationOfInterestAtCurrentLocation
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  internal = self->_internal;
  internalQueue = internal->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19BA0B570;
  v7[3] = &unk_1E753CF38;
  v7[4] = internal;
  v7[5] = uUID;
  dispatch_async(internalQueue, v7);
  return uUID;
}

@end