@interface HKHealthWrapMessageConfiguration
- (HKHealthWrapMessageConfiguration)initWithChannel:(id)a3 payloadType:(id)a4 certificate:(__SecCertificate *)a5;
- (HKHealthWrapMessageConfiguration)initWithSubjectUUID:(id)a3 studyUUID:(id)a4 channel:(id)a5 payloadType:(id)a6 certificate:(__SecCertificate *)a7;
- (void)dealloc;
@end

@implementation HKHealthWrapMessageConfiguration

- (HKHealthWrapMessageConfiguration)initWithChannel:(id)a3 payloadType:(id)a4 certificate:(__SecCertificate *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    [HKHealthWrapMessageConfiguration initWithChannel:payloadType:certificate:];
    if (a5)
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
  if (a5)
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
    v12 = [v8 copy];
    channel = v11->_channel;
    v11->_channel = v12;

    v14 = [v10 copy];
    payloadType = v11->_payloadType;
    v11->_payloadType = v14;

    CFRetain(a5);
    v11->_certificate = a5;
  }

  return v11;
}

- (HKHealthWrapMessageConfiguration)initWithSubjectUUID:(id)a3 studyUUID:(id)a4 channel:(id)a5 payloadType:(id)a6 certificate:(__SecCertificate *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKHealthWrapMessageConfiguration initWithSubjectUUID:studyUUID:channel:payloadType:certificate:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [HKHealthWrapMessageConfiguration initWithSubjectUUID:studyUUID:channel:payloadType:certificate:];
LABEL_3:
  v16 = [(HKHealthWrapMessageConfiguration *)self initWithChannel:v14 payloadType:v15 certificate:a7];
  if (v16)
  {
    v17 = [v12 copy];
    subjectUUID = v16->_subjectUUID;
    v16->_subjectUUID = v17;

    v19 = [v13 copy];
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