@interface HKHealthWrapMessageConfiguration
- (HKHealthWrapMessageConfiguration)initWithChannel:(id)channel payloadType:(id)type certificate:(__SecCertificate *)certificate;
- (HKHealthWrapMessageConfiguration)initWithSubjectUUID:(id)d studyUUID:(id)iD channel:(id)channel payloadType:(id)type certificate:(__SecCertificate *)certificate;
- (void)dealloc;
@end

@implementation HKHealthWrapMessageConfiguration

- (HKHealthWrapMessageConfiguration)initWithChannel:(id)channel payloadType:(id)type certificate:(__SecCertificate *)certificate
{
  channelCopy = channel;
  typeCopy = type;
  v10 = typeCopy;
  if (channelCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [HKHealthWrapMessageConfiguration initWithChannel:payloadType:certificate:];
    if (certificate)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [HKHealthWrapMessageConfiguration initWithChannel:payloadType:certificate:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (certificate)
  {
    goto LABEL_4;
  }

LABEL_9:
  [HKHealthWrapMessageConfiguration initWithChannel:payloadType:certificate:];
LABEL_4:
  v17.receiver = self;
  v17.super_class = HKHealthWrapMessageConfiguration;
  v11 = [(HKHealthWrapMessageConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [channelCopy copy];
    channel = v11->_channel;
    v11->_channel = v12;

    v14 = [v10 copy];
    payloadType = v11->_payloadType;
    v11->_payloadType = v14;

    CFRetain(certificate);
    v11->_certificate = certificate;
  }

  return v11;
}

- (HKHealthWrapMessageConfiguration)initWithSubjectUUID:(id)d studyUUID:(id)iD channel:(id)channel payloadType:(id)type certificate:(__SecCertificate *)certificate
{
  dCopy = d;
  iDCopy = iD;
  channelCopy = channel;
  typeCopy = type;
  if (dCopy)
  {
    if (iDCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKHealthWrapMessageConfiguration initWithSubjectUUID:studyUUID:channel:payloadType:certificate:];
    if (iDCopy)
    {
      goto LABEL_3;
    }
  }

  [HKHealthWrapMessageConfiguration initWithSubjectUUID:studyUUID:channel:payloadType:certificate:];
LABEL_3:
  v16 = [(HKHealthWrapMessageConfiguration *)self initWithChannel:channelCopy payloadType:typeCopy certificate:certificate];
  if (v16)
  {
    v17 = [dCopy copy];
    subjectUUID = v16->_subjectUUID;
    v16->_subjectUUID = v17;

    v19 = [iDCopy copy];
    studyUUID = v16->_studyUUID;
    v16->_studyUUID = v19;
  }

  return v16;
}

- (void)dealloc
{
  certificate = self->_certificate;
  if (certificate)
  {
    CFRelease(certificate);
  }

  v4.receiver = self;
  v4.super_class = HKHealthWrapMessageConfiguration;
  [(HKHealthWrapMessageConfiguration *)&v4 dealloc];
}

- (void)initWithChannel:payloadType:certificate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"channel != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithChannel:payloadType:certificate:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"payloadType != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithChannel:payloadType:certificate:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"certificate != NULL" object:? file:? lineNumber:? description:?];
}

- (void)initWithSubjectUUID:studyUUID:channel:payloadType:certificate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"subjectUUID != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSubjectUUID:studyUUID:channel:payloadType:certificate:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"studyUUID != nil" object:? file:? lineNumber:? description:?];
}

@end