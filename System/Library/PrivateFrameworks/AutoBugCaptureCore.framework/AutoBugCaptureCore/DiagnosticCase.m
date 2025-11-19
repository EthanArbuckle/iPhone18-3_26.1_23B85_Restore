@interface DiagnosticCase
+ (id)_arrayObjectRepresentationOfJSONString:(id)a3;
+ (id)_caseDampeningTypeString:(signed __int16)a3;
+ (id)_closureTypeString:(signed __int16)a3;
+ (id)_stringRepresentationOfJSONObject:(id)a3 prettyPrint:(BOOL)a4;
+ (id)attachmentsFromStringRepresentation:(id)a3;
+ (id)descriptionForClosureType:(signed __int16)a3;
+ (id)descriptionForDampeningType:(signed __int16)a3;
+ (id)generateCaseSummaryDictionaryFromCaseStorage:(id)a3;
+ (id)generateCaseSummaryFromCaseStorageDictionary:(id)a3;
+ (id)signatureForCaseStorage:(id)a3;
+ (id)signatureForCaseStorageDictionary:(id)a3;
+ (id)stringRepresentationOfAttachments:(id)a3;
- (BOOL)_parseCaseStorageIntoSignature:(id)a3;
- (BOOL)_parseSignatureIntoCaseStorage:(id)a3;
- (BOOL)isRemoteTrigger;
- (BOOL)sendReports;
- (DiagnosticCase)initWithCaseId:(id)a3 manager:(id)a4;
- (DiagnosticCase)initWithCaseStorage:(id)a3 manager:(id)a4;
- (DiagnosticCase)initWithCoder:(id)a3;
- (DiagnosticCase)initWithSignature:(id)a3 flags:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 manager:(id)a8;
- (NSString)basebandChipset;
- (NSString)basebandFirmwareVersion;
- (NSString)buildVariant;
- (NSString)buildVersion;
- (NSString)homeCarrier;
- (NSString)regulatoryDomainCountry;
- (double)caseClosedTime;
- (double)caseOpenedTime;
- (id)_caseSummaryFileName;
- (id)_generateCaseSummaryDictionary;
- (id)_updatedPayloadPathForOriginalPath:(id)a3 sandboxExtensionToken:(id)a4;
- (id)addSizeInfoForAttachment:(id)a3;
- (id)caseClosureTypeString;
- (id)caseDampeningTypeString;
- (id)caseStateString:(signed __int16)a3;
- (id)deParametersFromPayloads;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventsFromStringRepresentation;
- (id)payloadsFromStringRepresentation;
- (id)stringRepresentationOfAttachmentsWithSize;
- (id)stringRepresentationOfEvents;
- (id)stringRepresentationOfPayloads;
- (signed)caseState;
- (signed)caseStateFromString:(id)a3;
- (signed)closureType;
- (signed)dampeningType;
- (signed)dpSubmissionState;
- (void)_addToAttachments:(id)a3;
- (void)_updatePayloadDictionaryArray:(BOOL)a3;
- (void)addEvent:(id)a3 forced:(BOOL)a4;
- (void)addEvents:(id)a3 forced:(BOOL)a4;
- (void)addGroupIdentifierToSignature;
- (void)addPayload:(id)a3;
- (void)addRequiredAction:(id)a3 option:(id)a4 attachmentType:(id)a5 pattern:(id)a6;
- (void)addRequiredAttachmentType:(id)a3 pattern:(id)a4;
- (void)collectLogs;
- (void)dealloc;
- (void)deserializeDiagnosticCaseStorageAttachments;
- (void)deserializeDiagnosticCaseStorageEvents;
- (void)deserializeDiagnosticCaseStoragePayloads;
- (void)finishCase;
- (void)finishedCollectingLogs;
- (void)fixupCaseSummaryFile:(id)a3;
- (void)markAttachmentsAsPurgeable:(BOOL)a3 urgency:(unint64_t)a4;
- (void)noteCaseClosedTime;
- (void)noteCaseClosedTime:(double)a3;
- (void)noteCaseOpenedTime:(double)a3;
- (void)prepareAttachmentsForReporting;
- (void)prepareForSaving;
- (void)recordDiagnosticCaseSummary;
- (void)removeRequiredAttachmentType:(id)a3 pattern:(id)a4;
- (void)reportGeneratorEnded:(id)a3 reportInfo:(id)a4 error:(id)a5 isFinalReportGenerator:(BOOL)a6;
- (void)serializeAttachmentsToDiagnosticCaseStorage;
- (void)serializeEventsToDiagnosticCaseStorage;
- (void)serializePayloadsToDiagnosticCaseStorage;
- (void)startCollectingAllReports;
- (void)startCollectingDiagnosticExtensions:(id)a3;
- (void)summarizeCaseReport;
- (void)validateAttachments;
@end

@implementation DiagnosticCase

- (void)prepareForSaving
{
  v3 = [(DiagnosticCase *)self manager];
  v4 = [v3 configManager];
  v5 = [v4 autoBugCaptureRegularPayloads];

  if (v5)
  {
    [(DiagnosticCase *)self serializePayloadsToDiagnosticCaseStorage];
  }

  [(DiagnosticCase *)self serializeAttachmentsToDiagnosticCaseStorage];

  [(DiagnosticCase *)self serializeEventsToDiagnosticCaseStorage];
}

- (void)serializePayloadsToDiagnosticCaseStorage
{
  if (self->payloadsDirty)
  {
    v3 = [(DiagnosticCase *)self stringRepresentationOfPayloads];
    v4 = [(DiagnosticCase *)self caseStorage];
    [v4 setCasePayloads:v3];

    self->payloadsDirty = 0;
  }
}

- (void)serializeAttachmentsToDiagnosticCaseStorage
{
  if (self->attachmentsDirty)
  {
    v3 = [(DiagnosticCase *)self attachments];
    v4 = [DiagnosticCase stringRepresentationOfAttachments:v3];
    v5 = [(DiagnosticCase *)self caseStorage];
    [v5 setCaseAttachments:v4];

    [(DiagnosticCase *)self markAttachmentsAsPurgeable:1 urgency:1024];
    self->attachmentsDirty = 0;
  }
}

- (void)serializeEventsToDiagnosticCaseStorage
{
  if (self->eventsDirty)
  {
    v3 = [(DiagnosticCase *)self stringRepresentationOfEvents];
    v4 = [(DiagnosticCase *)self caseStorage];
    [v4 setCaseEvents:v3];

    self->eventsDirty = 0;
  }
}

- (signed)caseState
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 caseState];

  if ((v3 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (DiagnosticCase)initWithSignature:(id)a3 flags:(unint64_t)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 manager:(id)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v55.receiver = self;
  v55.super_class = DiagnosticCase;
  v20 = [(DiagnosticCase *)&v55 init];
  if (v20)
  {
    if (v15)
    {
      v21 = [MEMORY[0x277CCAD78] UUID];
      caseId = v20->_caseId;
      v20->_caseId = v21;

      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v15];
      signature = v20->_signature;
      v20->_signature = v23;

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      caseReports = v20->_caseReports;
      v20->_caseReports = v25;

      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      caseOutlets = v20->_caseOutlets;
      v20->_caseOutlets = v27;

      v20->_caseFlags = a4;
      v20->_allowIPSFileOutput = 1;
      [(DiagnosticCase *)v20 setManager:v19];
      v29 = [v19 caseStorageForCaseID:v20->_caseId];
      caseStorage = v20->_caseStorage;
      v20->_caseStorage = v29;

      v31 = v20->_caseStorage;
      if (v31)
      {
        [(DiagnosticCaseStorage *)v31 setCaseObjectVersion:@"1"];
        [(DiagnosticCase *)v20 _parseSignatureIntoCaseStorage:v15];
        v32 = [MEMORY[0x277CBEAA8] date];
        [(DiagnosticCaseStorage *)v20->_caseStorage setTimeStamp:v32];

        [(DiagnosticCaseStorage *)v20->_caseStorage setCaseClosedTime:0];
        [(DiagnosticCaseStorage *)v20->_caseStorage setCaseState:0];
        v33 = +[SystemProperties sharedInstance];
        v34 = [v33 buildVariant];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBuildVariant:v34];

        v35 = [v33 buildVersion];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBuildVersion:v35];

        v36 = [v33 basebandChipset];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBasebandChipset:v36];

        v37 = [v33 basebandFirmwareVersion];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBasebandFirmwareVersion:v37];

        v38 = +[WirelessTechnologyProfile sharedInstance];
        v39 = [v38 regulatoryDomainCountry];
        [(DiagnosticCaseStorage *)v20->_caseStorage setRegulatoryDomainCountry:v39];

        v40 = [v38 homeCarrier];
        [(DiagnosticCaseStorage *)v20->_caseStorage setHomeCarrier:v40];

        if ((a4 & 4) != 0)
        {
          [(DiagnosticCase *)v20 addGroupIdentifierToSignature];
        }

        [(DiagnosticCaseStorage *)v20->_caseStorage setRemoteTrigger:(a4 >> 1) & 1];
        *&v20->eventsDirty = 0;
        v20->attachmentsDirty = 0;
        if ([v16 count])
        {
          v41 = diagcaseLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = [(NSUUID *)v20->_caseId UUIDString];
            *buf = 138543618;
            v57 = v42;
            v58 = 2112;
            v59 = v16;
            _os_log_impl(&dword_241804000, v41, OS_LOG_TYPE_DEBUG, "Initializing session: %{public}@ with events:%@", buf, 0x16u);
          }

          v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v16];
          events = v20->_events;
          v20->_events = v43;

          v20->eventsDirty = 1;
        }

        if ([v17 count])
        {
          v45 = diagcaseLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v46 = [(NSUUID *)v20->_caseId UUIDString];
            *buf = 138543618;
            v57 = v46;
            v58 = 2112;
            v59 = v17;
            _os_log_impl(&dword_241804000, v45, OS_LOG_TYPE_DEBUG, "Initializing session: %{public}@ with payload:%@", buf, 0x16u);
          }

          v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v17, 0}];
          payloads = v20->_payloads;
          v20->_payloads = v47;

          v20->payloadsDirty = 1;
        }

        if ([v18 count])
        {
          v49 = diagcaseLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v50 = [(NSUUID *)v20->_caseId UUIDString];
            *buf = 138543618;
            v57 = v50;
            v58 = 2112;
            v59 = v17;
            _os_log_impl(&dword_241804000, v49, OS_LOG_TYPE_DEBUG, "Initializing session: %{public}@ with actions:%@", buf, 0x16u);
          }

          v51 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v18];
          actions = v20->_actions;
          v20->_actions = v51;
        }

        goto LABEL_22;
      }

      v38 = diagcaseLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_ERROR, "failed to retrieve caseStorage", buf, 2u);
      }
    }

    else
    {
      v38 = [MEMORY[0x277CCA890] currentHandler];
      [v38 handleFailureInMethod:a2 object:v20 file:@"DiagnosticCase.m" lineNumber:167 description:@"DiagnosticCase must be initialized with a signature."];
    }

    v33 = v20;
    v20 = 0;
LABEL_22:
  }

  v53 = *MEMORY[0x277D85DE8];
  return v20;
}

- (DiagnosticCase)initWithCaseStorage:(id)a3 manager:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    v30 = v29;
    v31 = @"initWithCaseStorage requires a caseStorage.";
    v32 = a2;
    v33 = self;
    v34 = 178;
LABEL_12:
    [v29 handleFailureInMethod:v32 object:v33 file:@"DiagnosticCase.m" lineNumber:v34 description:v31];

    v12 = 0;
    goto LABEL_13;
  }

  if (!v9)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    v30 = v29;
    v31 = @"initWithCaseStorage requires a manager.";
    v32 = a2;
    v33 = self;
    v34 = 181;
    goto LABEL_12;
  }

  v36.receiver = self;
  v36.super_class = DiagnosticCase;
  v11 = [(DiagnosticCase *)&v36 init];
  v12 = v11;
  if (v11)
  {
    [(DiagnosticCase *)v11 setManager:v10];
    objc_storeStrong(&v12->_caseStorage, a3);
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v14 = [v8 caseID];
    v15 = [v13 initWithUUIDString:v14];
    caseId = v12->_caseId;
    v12->_caseId = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signature = v12->_signature;
    v12->_signature = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    caseReports = v12->_caseReports;
    v12->_caseReports = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    caseOutlets = v12->_caseOutlets;
    v12->_caseOutlets = v21;

    [(DiagnosticCase *)v12 _parseCaseStorageIntoSignature:v12->_signature];
    *&v12->eventsDirty = 0;
    v12->attachmentsDirty = 0;
    v23 = [(DiagnosticCase *)v12 caseStorage];
    v24 = [v23 caseEvents];

    if (v24)
    {
      [(DiagnosticCase *)v12 deserializeDiagnosticCaseStorageEvents];
    }

    v25 = [(DiagnosticCase *)v12 caseStorage];
    v26 = [v25 casePayloads];

    if (v26)
    {
      [(DiagnosticCase *)v12 deserializeDiagnosticCaseStoragePayloads];
    }

    v27 = [(DiagnosticCase *)v12 caseStorage];
    v28 = [v27 caseAttachments];

    if (v28)
    {
      [(DiagnosticCase *)v12 deserializeDiagnosticCaseStorageAttachments];
    }
  }

LABEL_13:

  return v12;
}

- (DiagnosticCase)initWithCaseId:(id)a3 manager:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = v27;
    v29 = @"initWithCaseId requires a case identifier.";
    v30 = a2;
    v31 = self;
    v32 = 219;
LABEL_13:
    [v27 handleFailureInMethod:v30 object:v31 file:@"DiagnosticCase.m" lineNumber:v32 description:v29];

LABEL_14:
    self = 0;
    goto LABEL_15;
  }

  if (!v9)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = v27;
    v29 = @"initWithCaseId requires a manager.";
    v30 = a2;
    v31 = self;
    v32 = 222;
    goto LABEL_13;
  }

  v37.receiver = self;
  v37.super_class = DiagnosticCase;
  v11 = [(DiagnosticCase *)&v37 init];
  self = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  [(DiagnosticCase *)v11 setManager:v10];
  objc_storeStrong(&self->_caseId, a3);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  signature = self->_signature;
  self->_signature = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  caseReports = self->_caseReports;
  self->_caseReports = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  caseOutlets = self->_caseOutlets;
  self->_caseOutlets = v16;

  v18 = [(DiagnosticCase *)self manager];
  v19 = [v18 lookUpDiagnosticCaseStorageForUUID:self->_caseId];
  caseStorage = self->_caseStorage;
  self->_caseStorage = v19;

  if (!self->_caseStorage)
  {
    v35 = diagcaseLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [(NSUUID *)self->_caseId UUIDString];
      *buf = 138543362;
      v39 = v36;
      _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_ERROR, "Failed to retrieve caseStorage for case %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  [(DiagnosticCase *)self _parseCaseStorageIntoSignature:self->_signature];
  *&self->eventsDirty = 0;
  self->attachmentsDirty = 0;
  v21 = [(DiagnosticCase *)self caseStorage];
  v22 = [v21 caseEvents];

  if (v22)
  {
    [(DiagnosticCase *)self deserializeDiagnosticCaseStorageEvents];
  }

  v23 = [(DiagnosticCase *)self caseStorage];
  v24 = [v23 casePayloads];

  if (v24)
  {
    [(DiagnosticCase *)self deserializeDiagnosticCaseStoragePayloads];
  }

  v25 = [(DiagnosticCase *)self caseStorage];
  v26 = [v25 caseAttachments];

  if (v26)
  {
    [(DiagnosticCase *)self deserializeDiagnosticCaseStorageAttachments];
  }

LABEL_15:

  v33 = *MEMORY[0x277D85DE8];
  return self;
}

- (DiagnosticCase)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DiagnosticCase;
  return [(DiagnosticCase *)&v4 init];
}

- (void)dealloc
{
  [(DiagnosticCase *)self setManager:0];
  caseStorage = self->_caseStorage;
  self->_caseStorage = 0;

  v4.receiver = self;
  v4.super_class = DiagnosticCase;
  [(DiagnosticCase *)&v4 dealloc];
}

- (id)description
{
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [(DiagnosticCase *)self caseId];
  v17 = [v16 UUIDString];
  v3 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"domain"];
  v4 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"type"];
  v5 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"subtype"];
  v6 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"additional"];
  v7 = [(DiagnosticCase *)self caseStorage];
  v8 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [v7 caseState]);
  v9 = [(DiagnosticCase *)self caseStorage];
  v10 = [v9 timeStamp];
  v11 = [(DiagnosticCase *)self caseStorage];
  v12 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [v11 caseClosureType]);
  v15 = [v14 initWithFormat:@"Diagnostic case - ID:%@ Domain:%@ Type:%@, SubType:%@, STContext:%@, state:%@ opened time:%@ (closure:%@)", v17, v3, v4, v5, v6, v8, v10, v12];

  return v15;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(DiagnosticCase *)self _generateCaseSummaryDictionary];
  v5 = [v3 initWithDictionary:v4 copyItems:1];

  return v5;
}

- (void)noteCaseClosedTime
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(DiagnosticCase *)self caseStorage];
  v4 = [v3 caseClosedTime];

  if (v4)
  {
    v5 = diagcaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(DiagnosticCase *)self caseStorage];
      v7 = [v6 caseClosedTime];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Already noted caseClosedTime at: %@", &v10, 0xCu);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(DiagnosticCase *)self noteCaseClosedTime:0.0];
  }
}

- (void)noteCaseClosedTime:(double)a3
{
  if (a3 <= 0.0)
  {
    [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }
  v5 = ;
  v4 = [(DiagnosticCase *)self caseStorage];
  [v4 setCaseClosedTime:v5];
}

- (void)noteCaseOpenedTime:(double)a3
{
  if (a3 <= 0.0)
  {
    [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }
  v5 = ;
  v4 = [(DiagnosticCase *)self caseStorage];
  [v4 setTimeStamp:v5];
}

- (double)caseOpenedTime
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 timeStamp];
  [v3 timeIntervalSince1970];
  v5 = v4;

  return v5;
}

- (double)caseClosedTime
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 caseClosedTime];
  [v3 timeIntervalSince1970];
  v5 = v4;

  return v5;
}

- (signed)closureType
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 caseClosureType];

  if (v3 >= 6)
  {
    v4 = diagcaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "Unknown closure type %d", v7, 8u);
    }

    LOWORD(v3) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (signed)dampeningType
{
  v4 = [(DiagnosticCase *)self caseStorage];
  v5 = [v4 caseDampeningType];

  if ((v5 + 2) < 0xB)
  {
    return v5;
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"DiagnosticCase.m" lineNumber:511 description:@"Unhandled DiagnosticCaseDampeningType!"];

  v8 = [(DiagnosticCase *)self caseStorage];
  v9 = [v8 caseDampeningType];

  return v9;
}

- (id)caseDampeningTypeString
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = +[DiagnosticCase _caseDampeningTypeString:](DiagnosticCase, "_caseDampeningTypeString:", [v2 caseDampeningType]);

  return v3;
}

+ (id)_caseDampeningTypeString:(signed __int16)a3
{
  if ((a3 + 2) > 0xA)
  {
    return @"Unknown Case Dampening Type";
  }

  else
  {
    return off_278CF2080[(a3 + 2)];
  }
}

- (signed)dpSubmissionState
{
  v4 = [(DiagnosticCase *)self caseStorage];
  v5 = [v4 dpSubmissionState];

  if (v5 < 5)
  {
    return v5;
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"DiagnosticCase.m" lineNumber:586 description:@"Unhandled DiagnosticCaseDPSubmissionState!"];

  v8 = [(DiagnosticCase *)self caseStorage];
  v9 = [v8 dpSubmissionState];

  return v9;
}

- (BOOL)isRemoteTrigger
{
  if ((self->_caseFlags & 2) != 0)
  {
    return 1;
  }

  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 remoteTrigger];

  return v3;
}

- (NSString)buildVariant
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 buildVariant];

  return v3;
}

- (NSString)buildVersion
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 buildVersion];

  return v3;
}

- (NSString)basebandChipset
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 basebandChipset];

  return v3;
}

- (NSString)basebandFirmwareVersion
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 basebandFirmwareVersion];

  return v3;
}

- (NSString)regulatoryDomainCountry
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 regulatoryDomainCountry];

  return v3;
}

- (NSString)homeCarrier
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 homeCarrier];

  return v3;
}

- (id)caseStateString:(signed __int16)a3
{
  if (a3 > 6)
  {
    return @"UnsupportedState";
  }

  else
  {
    return off_278CF20D8[a3];
  }
}

- (signed)caseStateFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Uninitialized"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Preparing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Logging"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Finalizing"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Collecting"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Reporting"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Closed"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)caseClosureTypeString
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [v2 caseClosureType]);

  return v3;
}

+ (id)_closureTypeString:(signed __int16)a3
{
  if (a3 >= 6)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Closure State: %d", a3];
  }

  else
  {
    v4 = off_278CF2110[a3];
  }

  return v4;
}

+ (id)_stringRepresentationOfJSONObject:(id)a3 prettyPrint:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = sanitizedJSONCollectionObject(v5, 1);
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v7])
  {
    v16 = 0;
    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:v4 error:&v16];
    v9 = v16;
    v10 = v9;
    if (v8)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      goto LABEL_8;
    }

    if (v9)
    {
      v15 = diagcaseLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "JSON serialization failed with error: %@ (object = %@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = diagcaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Not a valid JSON object: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v11 = 0;
LABEL_8:

  v12 = v11;
  objc_autoreleasePoolPop(v6);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_arrayObjectRepresentationOfJSONString:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 dataUsingEncoding:4];
    if (v6)
    {
      v13 = 0;
      v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v13];
      v8 = v13;
      v9 = v8;
      if (v7)
      {
        [v4 addObjectsFromArray:v7];
      }

      else if (v8)
      {
        v10 = diagcaseLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v15 = v3;
          v16 = 2112;
          v17 = v9;
          _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "JSON deserialization for string:%@ failed with error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = diagcaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Encoding jsonString (%@) into NSData failed", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addRequiredAction:(id)a3 option:(id)a4 attachmentType:(id)a5 pattern:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!self->_requiredActions)
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    requiredActions = self->_requiredActions;
    self->_requiredActions = v14;
  }

  if (![v10 length] || !objc_msgSend(v12, "length"))
  {
    v17 = diagcaseLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_17;
    }

    v23 = 138543874;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v18 = "Invalid parameters adding required action %{public}@ with attachment type %{public}@ and pattern %@";
    v19 = v17;
    v20 = 32;
LABEL_11:
    _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, v18, &v23, v20);
    goto LABEL_12;
  }

  v16 = diagcaseLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v23 = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "This case is requesting action '%{public}@' of type '%{public}@'", &v23, 0x16u);
  }

  if (v11)
  {
    [(NSMutableDictionary *)self->_requiredActions setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v21 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)self->_requiredActions setObject:v21 forKeyedSubscript:v10];
  }

  if (([v12 isEqualToString:@"diagext"] & 1) == 0)
  {
    if ([v13 length])
    {
      [(DiagnosticCase *)self addRequiredAttachmentType:v12 pattern:v13];
      goto LABEL_17;
    }

    v17 = diagcaseLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v23) = 0;
    v18 = "Any required action that's not DiagnoticExtensions should provide a valid filename pattern to match against";
    v19 = v17;
    v20 = 2;
    goto LABEL_11;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addRequiredAttachmentType:(id)a3 pattern:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_requiredAttachments)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    requiredAttachments = self->_requiredAttachments;
    self->_requiredAttachments = v8;
  }

  if (-[NSObject length](v6, "length") && [v7 length])
  {
    v10 = diagcaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "This case requires attachment type '%{public}@' - matching with filename pattern '%@'", buf, 0x16u);
    }

    v11 = [(NSMutableDictionary *)self->_requiredAttachments objectForKeyedSubscript:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, v7, 0}];
      [(NSMutableDictionary *)self->_requiredAttachments setObject:v12 forKeyedSubscript:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        [v11 addObject:v7];
      }

      else if (v11)
      {
        v13 = diagcaseLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 138412802;
          v18 = v11;
          v19 = 2112;
          v20 = v15;
          v21 = 2114;
          v22 = v6;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found unexpected object %@ (class %@) when adding required attachments for type '%{public}@'", buf, 0x20u);
        }
      }

      else
      {
        [(NSMutableDictionary *)self->_requiredAttachments setObject:v7 forKeyedSubscript:v6];
      }
    }
  }

  else
  {
    v11 = diagcaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Invalid parameters for adding required attachment type %{public}@ and pattern %@.", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeRequiredAttachmentType:(id)a3 pattern:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableDictionary *)self->_requiredAttachments count]&& [v6 length]&& [v7 length])
  {
    v8 = diagcaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Removing case requirement for attachment type '%{public}@' - matching with filename pattern '%@'", &v17, 0x16u);
    }

    v9 = [(NSMutableDictionary *)self->_requiredAttachments objectForKeyedSubscript:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if ([v10 isEqualToString:v7])
      {
        [(NSMutableDictionary *)self->_requiredAttachments setObject:0 forKeyedSubscript:v6];
        goto LABEL_19;
      }

      v12 = diagcaseLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_18:

        goto LABEL_19;
      }

      v17 = 138412802;
      v18 = v10;
      v19 = 2114;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v13 = "Did not remove existing pattern %@ for type %{public}@ because the requested removal pattern did not match: %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v10 = v9;
        [v10 count];
        [v10 removeObject:v7];
        goto LABEL_19;
      }

      if (!v9)
      {
LABEL_20:

        goto LABEL_21;
      }

      v10 = diagcaseLogHandle();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v17 = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v12;
      v21 = 2114;
      v22 = v6;
      v13 = "Found unexpected object %@ (class %@) when adding required attachments for type '%{public}@'";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_241804000, v14, v15, v13, &v17, 0x20u);
    goto LABEL_18;
  }

LABEL_21:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_events)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = self->_events;
    self->_events = v7;
  }

  v9 = [(DiagnosticCase *)self caseStorage];
  if ([v9 caseState] != 2)
  {

    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([v6 count])
    {
      [(NSMutableArray *)self->_events addObject:v6];
      self->eventsDirty = 1;
    }

    goto LABEL_16;
  }

  v10 = [(DiagnosticCase *)self caseId];
  if (v10)
  {

    goto LABEL_7;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  v11 = [(DiagnosticCase *)self caseId];

  v12 = diagcaseLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      v14 = [(DiagnosticCase *)self caseStorage];
      v15 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [v14 caseState]);
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "caseState is %@, expecting DiagnosticCaseStateLogging", &v17, 0xCu);
    }
  }

  else if (v13)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "No case ID", &v17, 2u);
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)addEvents:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_events)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = self->_events;
    self->_events = v7;
  }

  v9 = [(DiagnosticCase *)self caseStorage];
  if ([v9 caseState] != 2)
  {

    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([v6 count])
    {
      [(NSMutableArray *)self->_events addObjectsFromArray:v6];
      self->eventsDirty = 1;
    }

    goto LABEL_16;
  }

  v10 = [(DiagnosticCase *)self caseId];
  if (v10)
  {

    goto LABEL_7;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  v11 = [(DiagnosticCase *)self caseId];

  v12 = diagcaseLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      v14 = [(DiagnosticCase *)self caseStorage];
      v15 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [v14 caseState]);
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "caseState is %@, expecting DiagnosticCaseStateLogging", &v17, 0xCu);
    }
  }

  else if (v13)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "No case ID", &v17, 2u);
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (id)stringRepresentationOfEvents
{
  if ([(NSMutableArray *)self->_events count])
  {
    v3 = [DiagnosticCase _stringRepresentationOfJSONObject:self->_events prettyPrint:0];
  }

  else
  {
    v4 = diagcaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "No events to represent", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)eventsFromStringRepresentation
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 caseEvents];

  if ([v3 length])
  {
    v4 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v3];
  }

  else
  {
    v5 = diagcaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "No events (empty events string)", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)deserializeDiagnosticCaseStorageEvents
{
  v3 = [(DiagnosticCase *)self eventsFromStringRepresentation];
  events = self->_events;
  self->_events = v3;

  self->eventsDirty = 0;
}

- (void)addPayload:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_payloads)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    payloads = self->_payloads;
    self->_payloads = v5;
  }

  v7 = [(DiagnosticCase *)self caseStorage];
  if ([v7 caseState] == 2)
  {
    v8 = [(DiagnosticCase *)self caseId];

    if (v8)
    {
      if ([v4 count])
      {
        [(NSMutableArray *)self->_payloads addObject:v4];
        self->payloadsDirty = 1;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = diagcaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(DiagnosticCase *)self caseStorage];
    v11 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [v10 caseState]);
    v12 = [(DiagnosticCase *)self caseId];
    v14 = 138412546;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Not in logging state (%@) or no caseId (%{public}@)", &v14, 0x16u);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)stringRepresentationOfPayloads
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_payloads count];
  v4 = diagcaseLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      payloads = self->_payloads;
      v10 = 138412290;
      v11 = payloads;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "_payloads is %@", &v10, 0xCu);
    }

    v7 = [DiagnosticCase _stringRepresentationOfJSONObject:self->_payloads prettyPrint:0];
  }

  else
  {
    if (v5)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "No payloads to represent", &v10, 2u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)payloadsFromStringRepresentation
{
  v2 = [(DiagnosticCase *)self caseStorage];
  v3 = [v2 casePayloads];

  if ([v3 length])
  {
    v4 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v3];
  }

  else
  {
    v5 = diagcaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "No events (empty payloads string)", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)deserializeDiagnosticCaseStoragePayloads
{
  v3 = [(DiagnosticCase *)self payloadsFromStringRepresentation];
  payloads = self->_payloads;
  self->_payloads = v3;

  self->payloadsDirty = 0;
}

+ (id)stringRepresentationOfAttachments:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  v5 = diagcaseLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "attachments is %@", &v10, 0xCu);
    }

    v7 = [DiagnosticCase _stringRepresentationOfJSONObject:v3 prettyPrint:0];
  }

  else
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "No attachment to represent", &v10, 2u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)attachmentsFromStringRepresentation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v4 length])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 dataUsingEncoding:4];
    if (v7)
    {
      v15 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v15];
      v9 = v15;
      v10 = v9;
      if (v8)
      {
        [v5 addObjectsFromArray:v8];
      }

      else if (v9)
      {
        v12 = diagcaseLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v17 = a1;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "attachment deserialization for case:%@ failed with error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = diagcaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "attachmentsString encoding failed", buf, 2u);
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11 = diagcaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "No attachments to represent", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_addToAttachments:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (!self->_attachments)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attachments = self->_attachments;
    self->_attachments = v5;

    v4 = v12;
  }

  v7 = [v4 length];
  v8 = v12;
  if (v7)
  {
    if ([v12 hasPrefix:@"file://"])
    {
      v9 = v12;
    }

    else
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
      v9 = [v10 absoluteString];
    }

    [(NSMutableArray *)self->_attachments addObject:v9];
    v11 = [(DiagnosticCase *)self addSizeInfoForAttachment:v9];

    v8 = v12;
  }

  self->attachmentsDirty = 1;

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)deserializeDiagnosticCaseStorageAttachments
{
  v3 = [(DiagnosticCase *)self caseStorage];
  v4 = [v3 caseAttachments];
  v5 = [DiagnosticCase attachmentsFromStringRepresentation:v4];

  attachments = self->_attachments;
  self->_attachments = v5;

  self->attachmentsDirty = 0;
}

- (void)addGroupIdentifierToSignature
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(NSUUID *)self->_caseId UUIDString];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringByAppendingFormat:@"_%@", v5];

  v7 = diagcaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Adding group identifier to case: %{public}@", buf, 0xCu);
  }

  if ([v6 length])
  {
    [(NSMutableDictionary *)self->_signature setObject:v6 forKeyedSubscript:@"groupID"];
    v8 = [(DiagnosticCase *)self caseStorage];
    [v8 setCaseGroupID:v6];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishCase
{
  if ([(DiagnosticCase *)self closureType]!= 4)
  {

    [(DiagnosticCase *)self setCaseState:4];
  }
}

- (void)collectLogs
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(DiagnosticCase *)self caseStorage];
  v4 = [v3 caseState];

  v5 = [(DiagnosticCase *)self caseStorage];
  v6 = [v5 caseDampeningType];

  if (*&self->completedDiagnosticActions != 0)
  {
    v7 = diagcaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      completedDiagnosticActions = self->completedDiagnosticActions;
      expectedDiagnosticActions = self->expectedDiagnosticActions;
      v28 = 134218240;
      v29 = expectedDiagnosticActions;
      v30 = 2048;
      v31 = completedDiagnosticActions;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Did collectLogs get called more than once? Observing non-zero values for expected actions (%lu) and completed actions (%lu).", &v28, 0x16u);
    }
  }

  self->completedDiagnosticActions = 0;
  self->expectedDiagnosticActions = 0;
  v10 = [(DiagnosticCase *)self manager];
  v11 = [v10 configManager];
  v12 = [v11 autoBugCaptureRegularPayloads];

  if (v12 && v4 == 4 && v6 <= 0)
  {
    v13 = diagcaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(DiagnosticCase *)self caseId];
      v28 = 138543362;
      v29 = v14;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "Starting collectLogs for case ID: %{public}@", &v28, 0xCu);
    }

    [(DiagnosticCase *)self _updatePayloadDictionaryArray:1];
    v15 = [(NSMutableDictionary *)self->_requiredActions objectForKeyedSubscript:@"diagext"];

    if (v15)
    {
      v16 = [(NSMutableDictionary *)self->_requiredActions objectForKeyedSubscript:@"diagext"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v18 = [(NSMutableDictionary *)self->_requiredActions objectForKeyedSubscript:@"diagext"];
        v19 = diagcaseLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v28 = 138412290;
          v29 = v18;
          _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEBUG, "Found diagnostic extension options: %@", &v28, 0xCu);
        }
      }

      else
      {
        v18 = 0;
      }

      [(DiagnosticCase *)self startCollectingDiagnosticExtensions:v18];
    }

    else
    {
      v26 = diagcaseLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, "DiagnosticExtensions action was requested to be disabled", &v28, 2u);
      }

      [(DiagnosticCase *)self startCollectingAllReports];
    }
  }

  else
  {
    [(DiagnosticCase *)self _updatePayloadDictionaryArray:0];
    v20 = +[SystemProperties sharedInstance];
    v21 = diagcaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      if ([v20 internalBuild])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if ([v20 carrierSeedBuild])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v28 = 138413058;
      v29 = v22;
      if (v4 == 4)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v30 = 2112;
      if (v6 >= 1)
      {
        v25 = @"NO";
      }

      else
      {
        v25 = @"YES";
      }

      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Not collecting logs : internalBuild %@, carrierSeedBuild %@, State collecting %@, accepted case %@", &v28, 0x2Au);
    }

    [(DiagnosticCase *)self setCaseState:5];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)startCollectingDiagnosticExtensions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(DiagnosticCase *)self deParametersFromPayloads];
  objc_initWeak(&location, self);
  v7 = [(DiagnosticCase *)self manager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke;
  v12[3] = &unk_278CF1FE8;
  v12[4] = self;
  objc_copyWeak(&v14, &location);
  v8 = v5;
  v13 = v8;
  v9 = [v7 collectDiagnosticExtensionLogsWithParameters:v6 options:v4 diagCase:self reply:v12];

  ++self->expectedDiagnosticActions;
  v10 = diagcaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Started collection from %ld diagnostic extensions", buf, 0xCu);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

void __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = diagcaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v3 count];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Ready to attach %ld results from DiagnosticExtensions", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke_157;
  v11[3] = &unk_278CF1FC0;
  v11[4] = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 48));
  v12 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  ++*(*(a1 + 32) + 16);
  v5 = diagcaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    *buf = 134218240;
    v15 = v8;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Finished running diagnostic extensions. (%lu of %lu completed)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained startCollectingAllReports];

  objc_destroyWeak(&v13);
  v10 = *MEMORY[0x277D85DE8];
}

void __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    objc_opt_class();
    v45 = v6;
    v46 = v5;
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) removeRequiredAttachmentType:@"diagext" pattern:v7];
      }

      else
      {
        v12 = diagcaseLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138412546;
          v54 = v6;
          v55 = 2112;
          v56 = v14;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ as diag extension attachments", buf, 0x16u);
        }
      }

      v8 = 0;
    }

    v15 = diagcaseLogHandle();
    v16 = 0x277CCA000uLL;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = [v8 count];
      *buf = 134218242;
      v54 = v17;
      v55 = 2112;
      v56 = v7;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Processing %ld attachments from %@", buf, 0x16u);
    }

    v44 = v7;

    v43 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (!v20)
    {
      v22 = 0;
      goto LABEL_31;
    }

    v21 = v20;
    v22 = 0;
    v23 = *v48;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v25 absoluteString];
          [WeakRetained _addToAttachments:v26];

LABEL_23:
          ++v22;
          continue;
        }

        v27 = *(v16 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [WeakRetained _addToAttachments:v25];
          goto LABEL_23;
        }

        v28 = diagcaseLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138412546;
          v54 = v30;
          v55 = 2112;
          v56 = v25;
          _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "Found attachment of unexpected class (%@) {%@}", buf, 0x16u);

          v16 = 0x277CCA000;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (!v21)
      {
LABEL_31:

        v31 = diagcaseLogHandle();
        v32 = v43;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          if (v19)
          {
            v33 = "success";
          }

          else
          {
            v33 = "failed";
          }

          v34 = [v19 count];
          v35 = *(v32 + 40);
          *buf = 136315906;
          v54 = v33;
          v55 = 2048;
          v56 = v34;
          v57 = 2048;
          v58 = v22;
          v59 = 2112;
          v60 = v35;
          _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_INFO, "Processing diagnostic extension result into events (result:%s, total count:%ld, attached count:%ld, timestamp:%@)", buf, 0x2Au);
        }

        v51[0] = @"type";
        v51[1] = @"name";
        v9 = v44;
        v52[0] = @"DiagnosticExtension";
        v52[1] = v44;
        v36 = MEMORY[0x277CBEC38];
        if (!v19)
        {
          v36 = MEMORY[0x277CBEC28];
        }

        v52[2] = v36;
        v51[2] = @"result";
        v51[3] = @"value";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v22, v43}];
        v52[3] = v37;
        v51[4] = @"count";
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
        v52[4] = v38;
        v51[5] = @"timestamp";
        v39 = MEMORY[0x277CCABB0];
        [*(v32 + 40) timeIntervalSince1970];
        v40 = [v39 numberWithDouble:?];
        v52[5] = v40;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:6];

        [WeakRetained addEvent:v41 forced:1];
        v6 = v45;
        v5 = v46;
        goto LABEL_39;
      }
    }
  }

  v9 = diagcaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412546;
    v54 = v5;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ as diag extension identifier. (Expecting NSString)", buf, 0x16u);
  }

LABEL_39:

  v42 = *MEMORY[0x277D85DE8];
}

- (id)deParametersFromPayloads
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [(DiagnosticCase *)self payloads];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (!v3)
  {
    v21 = 0;
    goto LABEL_27;
  }

  v4 = v3;
  v21 = 0;
  v5 = *v23;
  do
  {
    v6 = 0;
    do
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v22 + 1) + 8 * v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v9 = [v8 objectForKeyedSubscript:@"deparams"];
        v10 = diagcaseLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v9;
          _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Potential DE parameter dictionary: %@", buf, 0xCu);
        }

        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v21)
            {
              [v21 addEntriesFromDictionary:v9];
            }

            else
            {
              v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
            }

            goto LABEL_20;
          }

          v13 = diagcaseLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            *buf = 138412546;
            v27 = v9;
            v28 = 2112;
            v29 = v15;
            _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found object %@ of class %@ as diag extension parameters. (Expecting NSDictionary)", buf, 0x16u);
          }
        }

        else
        {
          v13 = diagcaseLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "No diag extension parameters in this payload dictionary.", buf, 2u);
          }
        }

LABEL_20:
        goto LABEL_21;
      }

      v8 = diagcaseLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412546;
        v27 = v7;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Found object %@ of class %@ in payloads array. (Expecting NSDictionary)", buf, 0x16u);
      }

LABEL_21:

      ++v6;
    }

    while (v4 != v6);
    v16 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    v4 = v16;
  }

  while (v16);
LABEL_27:

  if ([v21 count])
  {
    v17 = diagcaseLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v21 count];
      *buf = 134218242;
      v27 = v18;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "Found %lu DE parameters: %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)startCollectingAllReports
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  requiredActions = self->_requiredActions;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__DiagnosticCase_startCollectingAllReports__block_invoke;
  v11[3] = &unk_278CF2010;
  v11[4] = self;
  v11[5] = &v12;
  [(NSMutableDictionary *)requiredActions enumerateKeysAndObjectsUsingBlock:v11];
  v4 = v13;
  self->expectedDiagnosticActions += v13[3];
  if (v4[3])
  {
    v5 = diagcaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v13[3];
      v7 = "s";
      if (!v6)
      {
        v7 = "";
      }

      *buf = 134218498;
      v17 = v6;
      v18 = 2080;
      v19 = v7;
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Collecting %lu report%s for case: %@", buf, 0x20u);
    }

    v8 = [(DiagnosticCase *)self manager];
    [v8 startCollectingNextReportForDiagnosticCase:self];
  }

  else
  {
    v9 = diagcaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = self;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "There are no reports to collect for %@", buf, 0xCu);
    }

    [(DiagnosticCase *)self finishedCollectingLogs];
  }

  _Block_object_dispose(&v12, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __43__DiagnosticCase_startCollectingAllReports__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Ready to collect report name: %@", &v17, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) manager];
    v9 = v8;
    v10 = v5;
    v11 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) manager];
    v9 = v8;
    v10 = v5;
    v11 = 0;
LABEL_7:
    v12 = [v8 requestReportGenerator:v10 options:v11];

    if (v12)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    goto LABEL_12;
  }

  v13 = casemanagementLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ in report dictionary", &v17, 0x16u);
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)reportGeneratorEnded:(id)a3 reportInfo:(id)a4 error:(id)a5 isFinalReportGenerator:(BOOL)a6
{
  v6 = a6;
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  ++self->completedDiagnosticActions;
  v13 = diagcaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    completedDiagnosticActions = self->completedDiagnosticActions;
    expectedDiagnosticActions = self->expectedDiagnosticActions;
    v20 = 134218240;
    v21 = completedDiagnosticActions;
    v22 = 2048;
    v23 = expectedDiagnosticActions;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "Finished collecting a diagnostic report. (%lu of %lu completed)", &v20, 0x16u);
  }

  if (v11)
  {
    v16 = diagcaseLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Adding case report:%@", &v20, 0xCu);
    }

    v17 = [(DiagnosticCase *)self caseReports];
    [v17 addObject:v11];
  }

  if (v12)
  {
    v18 = diagcaseLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, "Error %@ from %@", &v20, 0x16u);
    }
  }

  if (v6)
  {
    [(DiagnosticCase *)self finishedCollectingLogs];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_updatedPayloadPathForOriginalPath:(id)a3 sandboxExtensionToken:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 UTF8String];
    if (sandbox_extension_consume() == -1)
    {
      v24 = diagcaseLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [(DiagnosticCase *)self caseId];
        v26 = __error();
        v27 = strerror(*v26);
        v28 = "Unknown";
        *buf = 138543874;
        v45 = v25;
        if (v27)
        {
          v28 = v27;
        }

        v46 = 2112;
        v47 = v6;
        v48 = 2080;
        v49 = v28;
        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_ERROR, "Case: %{public}@: Failed to consume extension token for '%@' due to error: %s", buf, 0x20u);
      }

      v23 = 0;
    }

    else
    {
      v9 = v6;
      v10 = [v9 lastPathComponent];
      v11 = MEMORY[0x277CCACA8];
      v12 = [(DiagnosticCase *)self caseId];
      v42 = v10;
      v13 = [v11 stringWithFormat:@"Case%@_%@", v12, v10];

      v14 = +[ABCAdministrator sharedInstance];
      v15 = [v14 configurationManager];
      v16 = [v15 logArchivePath];
      v17 = [v16 stringByAppendingPathComponent:v13];

      v18 = diagcaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(DiagnosticCase *)self caseId];
        *buf = 138543874;
        v45 = v19;
        v46 = 2112;
        v47 = v9;
        v48 = 2112;
        v49 = v17;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_INFO, "Case: %{public}@: Attempting to copy %@ to %@", buf, 0x20u);
      }

      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v43 = 0;
      v21 = [v20 copyItemAtPath:v9 toPath:v17 error:&v43];
      v22 = v43;

      if (v21)
      {
        v23 = v17;
      }

      else
      {
        v29 = diagcaseLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(DiagnosticCase *)self caseId];
          v30 = v41 = v13;
          v31 = [v22 localizedDescription];
          v32 = v31;
          *buf = 138544130;
          v33 = @"Unknown";
          v45 = v30;
          if (v31)
          {
            v33 = v31;
          }

          v46 = 2112;
          v47 = v9;
          v48 = 2112;
          v49 = v17;
          v50 = 2112;
          v51 = v33;
          _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_ERROR, "Case: %{public}@: Failed to copy %@ to %@ due to error: %@", buf, 0x2Au);

          v13 = v41;
        }

        v23 = 0;
      }

      if (sandbox_extension_release() == -1)
      {
        v34 = diagcaseLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [(DiagnosticCase *)self caseId];
          v36 = __error();
          v37 = strerror(*v36);
          v38 = "Unknown";
          *buf = 138543874;
          v45 = v35;
          if (v37)
          {
            v38 = v37;
          }

          v46 = 2112;
          v47 = v9;
          v48 = 2080;
          v49 = v38;
          _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_ERROR, "Case: %{public}@: Failed to release sandbox extension handle for %@ due to error: %s", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v23 = v6;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_updatePayloadDictionaryArray:(BOOL)a3
{
  v3 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v43 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = [(DiagnosticCase *)self payloads];
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    v9 = @"path";
    v40 = v3;
    v42 = v5;
    v39 = *v53;
    v38 = @"path";
    do
    {
      v10 = 0;
      v41 = v7;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        if (v3)
        {
          v45 = [*(*(&v52 + 1) + 8 * v10) objectForKeyedSubscript:v9];
          if (v45)
          {
            v44 = v10;
            v12 = diagcaseLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              [(DiagnosticCase *)self caseId];
              v14 = v13 = v5;
              *buf = 138543618;
              v58 = v14;
              v59 = 2112;
              v60 = v45;
              _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Case: %{public}@: Moving files from payload path array into working dir: %@", buf, 0x16u);

              v5 = v13;
            }

            v15 = [v11 objectForKeyedSubscript:@"sandbox_ext_token_dict"];
            if (v15)
            {
              v16 = [v11 mutableCopy];
              [v16 removeObjectForKey:@"sandbox_ext_token_dict"];
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v18 = v45;
              v47 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
              if (v47)
              {
                v19 = *v49;
                v46 = *v49;
                do
                {
                  for (i = 0; i != v47; ++i)
                  {
                    if (*v49 != v19)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v21 = *(*(&v48 + 1) + 8 * i);
                    v22 = [v15 objectForKeyedSubscript:{v21, v38}];
                    v23 = [(DiagnosticCase *)self _updatedPayloadPathForOriginalPath:v21 sandboxExtensionToken:v22];

                    if ([v23 length])
                    {
                      [v17 addObject:v23];
                    }

                    else
                    {
                      v24 = diagcaseLogHandle();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                      {
                        [(DiagnosticCase *)self caseId];
                        v25 = v18;
                        v26 = v15;
                        v27 = v17;
                        v28 = v16;
                        v30 = v29 = self;
                        *buf = 138543618;
                        v58 = v30;
                        v59 = 2112;
                        v60 = v21;
                        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "Case: %{public}@: Failed to copy %@ due to sandbox or file error. Dropping payload.", buf, 0x16u);

                        self = v29;
                        v16 = v28;
                        v17 = v27;
                        v15 = v26;
                        v18 = v25;
                        v19 = v46;
                      }
                    }
                  }

                  v47 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
                }

                while (v47);
              }

              v9 = v38;
              [v16 setObject:v17 forKeyedSubscript:v38];
              [(NSMutableArray *)v43 addObject:v16];

              v3 = v40;
              v7 = v41;
              v5 = v42;
              v8 = v39;
            }

            else
            {
              v16 = diagcaseLogHandle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v32 = [(DiagnosticCase *)self caseId];
                *buf = 138543618;
                v58 = v32;
                v59 = 2112;
                v60 = v11;
                _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Case: %{public}@: No sandbox extension token dictionary found. Dropping payload %@", buf, 0x16u);

                v5 = v42;
              }
            }

            v31 = v45;

            v10 = v44;
          }

          else
          {
            [(NSMutableArray *)v43 addObject:v11];
            v31 = 0;
          }
        }

        else
        {
          v31 = [*(*(&v52 + 1) + 8 * v10) mutableCopy];
          [v31 removeObjectForKey:@"sandbox_ext_token_dict"];
          [v31 removeObjectForKey:v9];
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v7);
  }

  payloads = self->_payloads;
  self->_payloads = v43;

  v34 = diagcaseLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = [(DiagnosticCase *)self caseId];
    v36 = [(DiagnosticCase *)self payloads];
    *buf = 138543618;
    v58 = v35;
    v59 = 2112;
    v60 = v36;
    _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_DEBUG, "Case: %{public}@: Updated payloads array: %@", buf, 0x16u);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)finishedCollectingLogs
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = diagcaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(DiagnosticCase *)self caseId];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Finished collecting all diagnostic reports for case %@.", &v12, 0xCu);
  }

  completedDiagnosticActions = self->completedDiagnosticActions;
  expectedDiagnosticActions = self->expectedDiagnosticActions;
  v7 = diagcaseLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (completedDiagnosticActions >= expectedDiagnosticActions)
  {
    if (v8)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Finished collecting all diagnostic reports.", &v12, 2u);
    }

    [(DiagnosticCase *)self setCaseState:5];
  }

  else
  {
    if (v8)
    {
      v9 = self->completedDiagnosticActions;
      v10 = self->expectedDiagnosticActions;
      v12 = 134218240;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Waiting for collection of diagnostic reports (finished %lu of %lu)", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)prepareAttachmentsForReporting
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = [(DiagnosticCase *)self caseStorage];
  v4 = [v3 caseState];

  if (v4 == 5)
  {
    v5 = [(DiagnosticCase *)self payloads];
    v6 = [v5 count];

    if (v6)
    {
      v7 = diagcaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [(DiagnosticCase *)self payloads];
        *buf = 138412290;
        v82 = v8;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Extracting payloads %@ to attachments.", buf, 0xCu);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      obj = [(DiagnosticCase *)self payloads];
      v9 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
      if (v9)
      {
        v10 = v9;
        v61 = *v76;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v76 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [*(*(&v75 + 1) + 8 * i) objectForKeyedSubscript:@"path"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v14 = [v13 countByEnumeratingWithState:&v71 objects:v93 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v72;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v72 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v71 + 1) + 8 * j);
                    if ([v18 length])
                    {
                      [(DiagnosticCase *)self _addToAttachments:v18];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v71 objects:v93 count:16];
                }

                while (v15);
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v19 = v12;
              if ([v19 length])
              {
                [(DiagnosticCase *)self _addToAttachments:v19];
              }
            }

LABEL_25:
          }

          v10 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
        }

        while (v10);
      }
    }

    v20 = [(DiagnosticCase *)self caseReports];
    v21 = [v20 count];

    if (v21)
    {
      v54 = [MEMORY[0x277CBEB18] array];
      v22 = diagcaseLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [(DiagnosticCase *)self caseReports];
        v24 = [v23 count];
        *buf = 134217984;
        v82 = v24;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "Extracting %ld reports to attachments.", buf, 0xCu);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v55 = [(DiagnosticCase *)self caseReports];
      v58 = [v55 countByEnumeratingWithState:&v67 objects:v92 count:16];
      if (v58)
      {
        v57 = *v68;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v68 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v26 = *(*(&v67 + 1) + 8 * k);
            v27 = diagcaseLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v82 = v26;
              _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_INFO, "Report: %@", buf, 0xCu);
            }

            v28 = [v26 objectForKeyedSubscript:@"attachments"];
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v29 = [v28 countByEnumeratingWithState:&v63 objects:v91 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v64;
              do
              {
                for (m = 0; m != v30; ++m)
                {
                  if (*v64 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v63 + 1) + 8 * m);
                  if ([v33 length])
                  {
                    [(DiagnosticCase *)self _addToAttachments:v33];
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v63 objects:v91 count:16];
              }

              while (v30);
            }

            v34 = [v26 objectForKeyedSubscript:@"reportCreator"];
            v35 = [v26 objectForKeyedSubscript:@"reportStart"];
            v36 = [v26 objectForKeyedSubscript:@"reportEnd"];
            v62 = [v26 objectForKeyedSubscript:@"reportEndStatus"];
            if ([v62 isEqualToString:@"Error"])
            {
              v37 = [v26 objectForKeyedSubscript:@"Error"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = v37;
                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = [v37 description];
LABEL_53:
                obja = v38;
              }

              else
              {
                v40 = diagcaseLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = objc_opt_class();
                  v42 = NSStringFromClass(v41);
                  *buf = 138412546;
                  v82 = v42;
                  v83 = 2112;
                  v84 = v37;
                  _os_log_impl(&dword_241804000, v40, OS_LOG_TYPE_INFO, "Found unexpected class %@ as error payload: %@", buf, 0x16u);
                }

                obja = 0;
              }

              v39 = v62;

              goto LABEL_58;
            }

            obja = 0;
            v39 = v62;
LABEL_58:
            v43 = diagcaseLogHandle();
            v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
            if (v34 && v35 && v36 && v39)
            {
              if (v44)
              {
                v45 = [v28 count];
                *buf = 138413314;
                v82 = v34;
                v83 = 2112;
                v84 = v35;
                v85 = 2112;
                v86 = v36;
                v87 = 2112;
                v88 = v39;
                v89 = 2048;
                v90 = v45;
                _os_log_impl(&dword_241804000, v43, OS_LOG_TYPE_DEBUG, "Processing report result from %@ into events (start:%@, end:%@, result:%@, %ld attachments)", buf, 0x34u);
              }

              v79[0] = @"type";
              v79[1] = @"name";
              v80[0] = @"report";
              v80[1] = v34;
              v80[2] = @"Start";
              v79[2] = @"status";
              v79[3] = @"timestamp";
              v46 = MEMORY[0x277CCABB0];
              [v35 timeIntervalSince1970];
              v47 = [v46 numberWithDouble:?];
              v80[3] = v47;
              v56 = v35;
              v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:4];

              [v54 addObject:v43];
              v48 = MEMORY[0x277CBEAC0];
              v49 = MEMORY[0x277CCABB0];
              [v36 timeIntervalSince1970];
              v50 = [v49 numberWithDouble:?];
              v51 = obja;
              v52 = [v48 dictionaryWithObjectsAndKeys:{@"report", @"type", v34, @"name", @"End", @"status", v62, @"result", v50, @"timestamp", obja, @"context", 0}];

              v35 = v56;
              v39 = v62;
              [v54 addObject:v52];
            }

            else
            {
              if (v44)
              {
                *buf = 138413058;
                v82 = v34;
                v83 = 2112;
                v84 = v35;
                v85 = 2112;
                v86 = v36;
                v87 = 2112;
                v88 = v39;
                _os_log_impl(&dword_241804000, v43, OS_LOG_TYPE_DEBUG, "Report result contains missing values - creator:%@ startDate:%@ endDate:%@ result:%@", buf, 0x2Au);
              }

              v51 = obja;
            }
          }

          v58 = [v55 countByEnumeratingWithState:&v67 objects:v92 count:16];
        }

        while (v58);
      }

      if ([v54 count])
      {
        [(DiagnosticCase *)self addEvents:v54 forced:1];
      }
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)validateAttachments
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v3 = diagcaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    requiredAttachments = self->_requiredAttachments;
    *buf = 138412290;
    v18 = requiredAttachments;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Ready to validate attachments with requirements: %@", buf, 0xCu);
  }

  v5 = self->_requiredAttachments;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__DiagnosticCase_validateAttachments__block_invoke;
  v12[3] = &unk_278CF2010;
  v12[4] = self;
  v12[5] = &v13;
  [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v12];
  if (v14[3])
  {
    if ([(NSMutableDictionary *)self->_requiredAttachments count])
    {
      v6 = diagcaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "All attachments validated successfully.";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
        _os_log_impl(&dword_241804000, v8, v9, v7, buf, 2u);
      }
    }

    else
    {
      v6 = diagcaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "No attachments to validate.";
        v8 = v6;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  v10 = diagcaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = self;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "This case has one or more missing required attachments. Marking as ineligible. (%@)", buf, 0xCu);
  }

  [(DiagnosticCase *)self setDampeningType:4294967294];
LABEL_14:
  _Block_object_dispose(&v13, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __37__DiagnosticCase_validateAttachments__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  v7 = diagcaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v41 = v5;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Validating we have attachment type '%@' with pattern '%@'", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__DiagnosticCase_validateAttachments__block_invoke_185;
  aBlock[3] = &unk_278CF2038;
  v28 = &v30;
  v8 = v5;
  v27 = v8;
  v29 = &v36;
  v9 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v31 + 5, a3);
    [*(*(a1 + 32) + 112) enumerateObjectsUsingBlock:v9];
    if ((v37[3] & 1) == 0)
    {
      v10 = diagcaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v31[5];
        *buf = 138543618;
        v41 = v8;
        v42 = 2112;
        v43 = v11;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Missing attachment for type '%{public}@' (matching pattern '%@')", buf, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v6;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __37__DiagnosticCase_validateAttachments__block_invoke_187;
      v20[3] = &unk_278CF2060;
      v13 = *(a1 + 32);
      v23 = &v30;
      v20[4] = v13;
      v22 = v9;
      v24 = &v36;
      v14 = v8;
      v15 = *(a1 + 40);
      v21 = v14;
      v25 = v15;
      [v12 enumerateObjectsUsingBlock:v20];
    }

    else
    {
      v16 = diagcaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138412802;
        v41 = v6;
        v42 = 2112;
        v43 = v18;
        v44 = 2114;
        v45 = v8;
        _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Found unexpected pattern object %@ (class %@) when validating required attachments for type '%{public}@'", buf, 0x20u);
      }
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  v19 = *MEMORY[0x277D85DE8];
}

void __37__DiagnosticCase_validateAttachments__block_invoke_185(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 containsString:*(*(a1[5] + 8) + 40)])
  {
    v7 = diagcaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Validated attachment for type '%@': %@", &v10, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __37__DiagnosticCase_validateAttachments__block_invoke_187(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    [*(a1[4] + 112) enumerateObjectsUsingBlock:a1[6]];
    if ((*(*(a1[8] + 8) + 24) & 1) == 0)
    {
      v5 = diagcaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[5];
        v7 = *(*(a1[7] + 8) + 40);
        v13 = 138543618;
        v14 = v6;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Missing attachment for type '%{public}@' (matching pattern '%@')", &v13, 0x16u);
      }

      *(*(a1[9] + 8) + 24) = 0;
    }
  }

  else
  {
    v8 = diagcaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = a1[5];
      v13 = 138412802;
      v14 = v4;
      v15 = 2112;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Found unexpected pattern object %@ (class %@) when validating required attachments for type '%{public}@'", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)addSizeInfoForAttachment:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [v5 path];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v8 = [v7 attributesOfItemAtPath:v6 error:&v21];
  v9 = v21;

  if (v9)
  {
    v10 = diagcaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 localizedDescription];
      *buf = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: Error getting fileSize for '%@': %@", buf, 0x16u);
    }

    v12 = &stru_285368168;
  }

  else
  {
    v13 = [v8 fileSize];
    v10 = [v4 lastPathComponent];
    v14 = [(DiagnosticCase *)self attachmentsWithSize];

    if (!v14)
    {
      v15 = objc_opt_new();
      [(DiagnosticCase *)self setAttachmentsWithSize:v15];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
    v17 = [(DiagnosticCase *)self attachmentsWithSize];
    [v17 setObject:v16 forKeyedSubscript:v10];

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%llu", v13];
    v18 = summaryLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v4;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Adding attachment %@, size: %llu bytes", buf, 0x16u);
    }

    self->_attachmentsFileSize += v13;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)stringRepresentationOfAttachmentsWithSize
{
  v2 = [(DiagnosticCase *)self attachmentsWithSize];
  v3 = [DiagnosticCaseSummaryAnalytics stringRepresentationOfAttachmentsWithSize:v2];

  return v3;
}

+ (id)generateCaseSummaryDictionaryFromCaseStorage:(id)a3
{
  v39[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  v5 = [v3 timeStamp];
  v6 = [v5 copy];

  v7 = [v3 caseClosedTime];
  v8 = [v7 copy];

  v34 = v6;
  v33 = iso8601date_string_from_NSDate(v6);
  v32 = iso8601date_string_from_NSDate(v8);
  v9 = [v3 caseID];
  v10 = [v9 copy];
  [v4 setObject:v10 forKeyedSubscript:@"case_identifier"];

  v11 = [DiagnosticCase signatureForCaseStorage:v3];
  [v4 setObject:v11 forKeyedSubscript:@"signature"];

  v12 = [v3 caseEvents];
  v13 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v12];
  [v4 setObject:v13 forKeyedSubscript:@"events"];

  v38[0] = @"case_opened_timestamp";
  v14 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSince1970];
  v15 = [v14 numberWithDouble:?];
  v39[0] = v15;
  v39[1] = v33;
  v38[1] = @"case_opened_time";
  v38[2] = @"case_closed_timestamp";
  v16 = MEMORY[0x277CCABB0];
  [v8 timeIntervalSince1970];
  v17 = [v16 numberWithDouble:?];
  v39[2] = v17;
  v39[3] = v32;
  v38[3] = @"case_closed_time";
  v38[4] = @"dampening_type";
  v18 = +[DiagnosticCase _caseDampeningTypeString:](DiagnosticCase, "_caseDampeningTypeString:", [v3 caseDampeningType]);
  v39[4] = v18;
  v38[5] = @"closure_type";
  v19 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [v3 caseClosureType]);
  v39[5] = v19;
  v38[6] = @"remote_trigger";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "remoteTrigger")}];
  v39[6] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:7];
  [v4 setObject:v21 forKeyedSubscript:@"case_status"];

  v22 = [v3 caseAttachments];
  v23 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v22];
  [v4 setObject:v23 forKeyedSubscript:@"attachments"];

  v24 = +[SystemProperties sharedInstance];
  v36[0] = @"product_type";
  v25 = [v24 productType];
  v37[0] = v25;
  v36[1] = @"product_name";
  v26 = [v24 productName];
  v37[1] = v26;
  v36[2] = @"product_version";
  v27 = [v24 productVersion];
  v37[2] = v27;
  v36[3] = @"build_version";
  v28 = [v24 buildVersion];
  v37[3] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  [v4 setObject:v29 forKeyedSubscript:@"system_properties"];

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)generateCaseSummaryFromCaseStorageDictionary:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 objectForKeyedSubscript:@"timeStamp"];
  v7 = [v6 copy];

  v8 = [v3 objectForKeyedSubscript:@"caseClosedTime"];
  v9 = [v8 copy];

  if (v7)
  {
    if (!v9)
    {
      v10 = diagcaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v3;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Fixing up case dictionary with missing key caseClosedTime: %@", buf, 0xCu);
      }

      v9 = v7;
    }

    context = v5;
    v11 = iso8601date_string_from_NSDate(v7);
    v12 = iso8601date_string_from_NSDate(v9);
    v13 = [v3 objectForKeyedSubscript:@"caseID"];
    v14 = [v13 copy];
    [v4 setObject:v14 forKeyedSubscript:@"case_identifier"];

    v15 = [DiagnosticCase signatureForCaseStorageDictionary:v3];
    [v4 setObject:v15 forKeyedSubscript:@"signature"];

    v16 = [v3 objectForKeyedSubscript:@"caseEvents"];
    v17 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v16];
    [v4 setObject:v17 forKeyedSubscript:@"events"];

    v55[0] = @"case_opened_timestamp";
    v18 = MEMORY[0x277CCABB0];
    v51 = v7;
    [v7 timeIntervalSince1970];
    v19 = [v18 numberWithDouble:?];
    v56[0] = v19;
    v56[1] = v11;
    v49 = v11;
    v55[1] = @"case_opened_time";
    v55[2] = @"case_closed_timestamp";
    v20 = MEMORY[0x277CCABB0];
    v50 = v9;
    [v9 timeIntervalSince1970];
    v21 = [v20 numberWithDouble:?];
    v56[2] = v21;
    v56[3] = v12;
    v48 = v12;
    v55[3] = @"case_closed_time";
    v55[4] = @"dampening_type";
    v22 = [v3 objectForKeyedSubscript:@"caseDampeningType"];
    v23 = +[DiagnosticCase _caseDampeningTypeString:](DiagnosticCase, "_caseDampeningTypeString:", [v22 intValue]);
    v56[4] = v23;
    v55[5] = @"closure_type";
    v24 = [v3 objectForKeyedSubscript:@"caseClosureType"];
    v25 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [v24 intValue]);
    v56[5] = v25;
    v55[6] = @"remote_trigger";
    v26 = [v3 objectForKeyedSubscript:@"remoteTrigger"];
    v56[6] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:7];
    [v4 setObject:v27 forKeyedSubscript:@"case_status"];

    v28 = [v3 objectForKeyedSubscript:@"caseAttachments"];
    v29 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v28];
    [v4 setObject:v29 forKeyedSubscript:@"attachments"];

    v30 = [v3 objectForKeyedSubscript:@"dpSubmissionState"];
    [v4 setObject:v30 forKeyedSubscript:@"dp_submission"];

    v31 = +[SystemProperties sharedInstance];
    v32 = [v3 objectForKeyedSubscript:@"buildVariant"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = [v31 buildVariant];
    }

    v37 = v34;

    v38 = [v3 objectForKeyedSubscript:@"buildVersion"];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = [v31 buildVersion];
    }

    v41 = v40;

    v53[0] = @"product_type";
    v42 = [v31 productType];
    v54[0] = v42;
    v53[1] = @"product_name";
    v43 = [v31 productName];
    v54[1] = v43;
    v53[2] = @"product_version";
    v44 = [v31 productVersion];
    v54[2] = v44;
    v54[3] = v41;
    v53[3] = @"build_version";
    v53[4] = @"build_variant";
    v54[4] = v37;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
    [v4 setObject:v45 forKeyedSubscript:@"system_properties"];

    objc_autoreleasePoolPop(context);
    v36 = v4;
  }

  else
  {
    v35 = diagcaseLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = v3;
      _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_ERROR, "Missing required key timeStamp (case open time) from case dictionary: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v36 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_generateCaseSummaryDictionary
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CBEAA8];
  [(DiagnosticCase *)self caseOpenedTime];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  v58 = iso8601date_string_from_NSDate(v5);

  v6 = MEMORY[0x277CBEAA8];
  [(DiagnosticCase *)self caseClosedTime];
  v7 = [v6 dateWithTimeIntervalSince1970:?];
  v57 = iso8601date_string_from_NSDate(v7);

  v8 = [(DiagnosticCase *)self caseId];
  v9 = [v8 UUIDString];
  [v3 setObject:v9 forKeyedSubscript:@"case_identifier"];

  v10 = [(DiagnosticCase *)self signature];
  [v3 setObject:v10 forKeyedSubscript:@"signature"];

  v11 = [(DiagnosticCase *)self events];
  [v3 setObject:v11 forKeyedSubscript:@"events"];

  v54 = MEMORY[0x277CBEAC0];
  v12 = MEMORY[0x277CCABB0];
  [(DiagnosticCase *)self caseOpenedTime];
  v13 = [v12 numberWithDouble:?];
  v14 = MEMORY[0x277CCABB0];
  [(DiagnosticCase *)self caseClosedTime];
  v15 = [v14 numberWithDouble:?];
  v16 = [(DiagnosticCase *)self caseDampeningTypeString];
  v17 = [(DiagnosticCase *)self caseClosureTypeString];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[DiagnosticCase isRemoteTrigger](self, "isRemoteTrigger")}];
  v19 = [v54 dictionaryWithObjectsAndKeys:{v13, @"case_opened_timestamp", v58, @"case_opened_time", v15, @"case_closed_timestamp", v57, @"case_closed_time", v16, @"dampening_type", v17, @"closure_type", v18, @"remote_trigger", 0}];
  [v3 setObject:v19 forKeyedSubscript:@"case_status"];

  v20 = [(DiagnosticCase *)self attachments];
  [v3 setObject:v20 forKeyedSubscript:@"attachments"];

  v21 = +[SystemProperties sharedInstance];
  v22 = +[WirelessTechnologyProfile sharedInstance];
  v52 = MEMORY[0x277CBEB38];
  v51 = [v21 productType];
  v50 = [v21 productName];
  v23 = [v21 productVersion];
  v24 = [v21 buildVersion];
  v25 = [v21 buildVariant];
  v26 = [v22 regulatoryDomainCountry];
  v55 = v22;
  v27 = [v22 homeCarrier];
  v28 = [v52 dictionaryWithObjectsAndKeys:{v51, @"product_type", v50, @"product_name", v23, @"product_version", v24, @"build_version", v25, @"build_variant", v26, @"regulatory_domain_country", v27, @"home_carrier", 0}];

  v29 = [v21 serialNumber];
  v30 = [v29 length];

  if (v30)
  {
    v31 = [v21 serialNumber];
    [v28 setObject:v31 forKeyedSubscript:@"serial_number"];
  }

  [v3 setObject:v28 forKeyedSubscript:@"system_properties"];
  v32 = +[PrimaryInterfaceUtils sharedInstance];
  v33 = diagcaseLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v32 primaryInterfaceType];
    v35 = [v32 interfaceBecamePrimaryDate];
    v36 = [v32 hasPrimaryInterface];
    v37 = "NO";
    *buf = 134218498;
    v60 = v34;
    if (v36)
    {
      v37 = "YES";
    }

    v61 = 2112;
    v62 = v35;
    v63 = 2080;
    v64 = v37;
    _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, "InterfaceUtils reports type:%ld date:%@ hasPrimary:%s", buf, 0x20u);
  }

  v53 = v28;

  if ([v32 hasPrimaryInterface])
  {
    v38 = [v32 primaryInterfaceTypeString];
    v39 = [v32 interfaceBecamePrimaryDate];
    v40 = MEMORY[0x277CCABB0];
    [v39 timeIntervalSince1970];
    v41 = [v40 numberWithDouble:?];
    if (v39)
    {
      v42 = iso8601date_string_from_NSDate(v39);
    }

    else
    {
      v42 = 0;
    }

    v45 = [v32 estimatedInterfaceBecamePrimaryDate];
    v46 = MEMORY[0x277CCABB0];
    [v45 timeIntervalSince1970];
    v43 = [v46 numberWithDouble:?];
    if (v45)
    {
      v44 = iso8601date_string_from_NSDate(v45);
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v44 = 0;
    v41 = 0;
    v38 = @"None";
  }

  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v38, @"primary_interface_type", v41, @"primary_interface_timestamp", v42, @"primary_interface_time", v43, @"primary_interface_timestamp_estimated", v44, @"primary_interface_time_estimated", 0}];
  [v3 setObject:v47 forKeyedSubscript:@"network_properties"];

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_caseSummaryFileName
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v4 = MEMORY[0x277CBEAA8];
  [(DiagnosticCase *)self caseOpenedTime];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  v6 = [v3 stringFromDate:v5];

  if (![v6 length])
  {
    v7 = diagcaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DiagnosticCase *)self caseOpenedTime];
      *buf = 134217984;
      v20 = v8;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "formattedDate is nil for case opened time %f", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    [(DiagnosticCase *)self caseOpenedTime];
    v11 = [v9 initWithFormat:@"%.3f", v10];

    v6 = v11;
  }

  v12 = [(DiagnosticCase *)self manager];
  v13 = [v12 configManager];
  v14 = [v13 logArchivePath];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"case_summary_%@.json", v6];
  v16 = [v14 stringByAppendingPathComponent:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)summarizeCaseReport
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(DiagnosticCase *)self caseStorage];
  v4 = [v3 caseDampeningType];

  if (v4 < 1)
  {
    v5 = [(DiagnosticCase *)self _generateCaseSummaryDictionary];
    if (!v5)
    {
      v6 = diagcaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Case summary dictionary is nil", buf, 2u);
      }

      goto LABEL_23;
    }

    v6 = [DiagnosticCase _stringRepresentationOfJSONObject:v5 prettyPrint:1];
    if ([v6 length])
    {
      v7 = [(DiagnosticCase *)self _caseSummaryFileName];
      if (v7)
      {
        v17 = 0;
        v12 = [v6 writeToFile:v7 atomically:0 encoding:4 error:&v17];
        v13 = v17;
        if (v12)
        {
          [(DiagnosticCase *)self fixupCaseSummaryFile:v7];
          v14 = diagcaseLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v19 = v7;
            _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Case summary wrote to %@, adding to attachment", buf, 0xCu);
          }

          [(DiagnosticCase *)self _addToAttachments:v7];
          [(DiagnosticCase *)self setCaseSummaryFilepath:v7];
        }

        else
        {
          v15 = diagcaseLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v13;
            _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Writing of case summary failed with error %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v13 = diagcaseLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Case summary file name is nil", buf, 2u);
        }
      }

      goto LABEL_22;
    }

    v7 = diagcaseLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    *buf = 138412290;
    v19 = v5;
    v8 = "Pretty case summary is empty (case summary dict = %@)";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 12;
LABEL_4:
    _os_log_impl(&dword_241804000, v9, v10, v8, buf, v11);
    goto LABEL_22;
  }

  v5 = diagcaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(DiagnosticCase *)self caseId];
    v7 = [(DiagnosticCase *)self caseDampeningTypeString];
    *buf = 138543618;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v8 = "Skip creating a case summary for %{public}@ (dampening = %@)";
    v9 = v5;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 22;
    goto LABEL_4;
  }

LABEL_24:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fixupCaseSummaryFile:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  if (v4)
  {
    v5 = v4;
    v6 = +[ABCAdministrator sharedInstance];
    v7 = [v6 configurationManager];

    if (chown(v5, [v7 logArchiveUID], [v7 logArchiveGID]))
    {
      v8 = diagcaseLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = getuid();
        v10 = getgid();
        v11 = *__error();
        *buf = 136315906;
        v36 = v5;
        v37 = 1024;
        *v38 = v9;
        *&v38[4] = 1024;
        *&v38[6] = v10;
        LOWORD(v39[0]) = 1024;
        *(v39 + 2) = v11;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "failed to chown for file: %s, uid: %u, gid: %u  %{errno}d", buf, 0x1Eu);
      }
    }

    v12 = listxattr(v5, 0, 0, 1);
    v13 = malloc_type_malloc(v12, 0xD3A248F3uLL);
    if (v13)
    {
      v14 = v13;
      v15 = listxattr(v5, v13, v12, 1);
      v28 = v7;
      v29 = v3;
      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v14 length:v15 encoding:4];
        v15 = [v16 componentsSeparatedByString:&stru_28536C928];
      }

      free(v14);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            if ([v22 length])
            {
              v23 = [v22 UTF8String];
              if (v23)
              {
                v24 = v23;
                if (removexattr(v5, v23, 1))
                {
                  v25 = diagcaseLogHandle();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v26 = *__error();
                    *buf = 136315650;
                    v36 = v24;
                    v37 = 2080;
                    *v38 = v5;
                    *&v38[8] = 1024;
                    v39[0] = v26;
                    _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_ERROR, "failed to removexattr %s for file: %s, %{errno}d", buf, 0x1Cu);
                  }
                }
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v19);
      }

      v7 = v28;
      v3 = v29;
    }
  }

  else
  {
    v7 = diagcaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v3;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "failed to get UTF8 string for %@", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)recordDiagnosticCaseSummary
{
  v3 = [(DiagnosticCase *)self manager];
  v4 = [v3 configManager];
  v5 = [v4 caseSummaryEnabled];

  if (v5)
  {
    v6 = [(DiagnosticCase *)self manager];
    [v6 recordDiagnosticCaseSummaryForCase:self];
  }
}

- (BOOL)sendReports
{
  v3 = [(DiagnosticCase *)self caseStorage];
  v4 = [v3 caseState];

  if (v4 == 5)
  {
    v5 = [(DiagnosticCase *)self manager];
    v6 = [v5 sendReportsForCase:self];
  }

  else
  {
    v6 = 1;
  }

  [(DiagnosticCase *)self setCaseState:6];
  return v6;
}

- (BOOL)_parseSignatureIntoCaseStorage:(id)a3
{
  v4 = a3;
  if (v4 && ([(DiagnosticCase *)self caseStorage], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 objectForKeyedSubscript:@"domain"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(DiagnosticCase *)self caseStorage];
        [v7 setCaseDomain:v6];
      }
    }

    v8 = [v4 objectForKeyedSubscript:@"type"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [(DiagnosticCase *)self caseStorage];
        [v9 setCaseType:v8];
      }
    }

    v10 = [v4 objectForKeyedSubscript:@"subtype"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(DiagnosticCase *)self caseStorage];
        [v11 setCaseSubtype:v10];
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"additional"];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(DiagnosticCase *)self caseStorage];
        [v13 setCaseSubtypeContext:v12];
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"detected"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(DiagnosticCase *)self caseStorage];
        [v15 setCaseDetectedProcess:v14];
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"effective"];

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [(DiagnosticCase *)self caseStorage];
        [v17 setCaseEffectiveProcess:v16];
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"related"];

    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [(DiagnosticCase *)self caseStorage];
        [v19 setCaseRelatedProcesses:v18];
      }
    }

    v20 = [v4 objectForKeyedSubscript:@"threshval"];

    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [(DiagnosticCase *)self caseStorage];
        [v21 setCaseThresholdValues:v20];
      }
    }

    v22 = [v4 objectForKeyedSubscript:@"context"];

    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [(DiagnosticCase *)self caseStorage];
        [v23 setCaseContext:v22];
      }
    }

    v24 = [v4 objectForKeyedSubscript:@"groupID"];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [(DiagnosticCase *)self caseStorage];
        [v25 setCaseGroupID:v24];
      }
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)_parseCaseStorageIntoSignature:(id)a3
{
  v4 = a3;
  if (v4 && ([(DiagnosticCase *)self caseStorage], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(DiagnosticCase *)self caseStorage];
    v7 = [v6 caseDomain];

    if (v7)
    {
      v8 = [(DiagnosticCase *)self caseStorage];
      v9 = [v8 caseDomain];
      [v4 setObject:v9 forKeyedSubscript:@"domain"];
    }

    v10 = [(DiagnosticCase *)self caseStorage];
    v11 = [v10 caseType];

    if (v11)
    {
      v12 = [(DiagnosticCase *)self caseStorage];
      v13 = [v12 caseType];
      [v4 setObject:v13 forKeyedSubscript:@"type"];
    }

    v14 = [(DiagnosticCase *)self caseStorage];
    v15 = [v14 caseSubtype];

    if (v15)
    {
      v16 = [(DiagnosticCase *)self caseStorage];
      v17 = [v16 caseSubtype];
      [v4 setObject:v17 forKeyedSubscript:@"subtype"];
    }

    v18 = [(DiagnosticCase *)self caseStorage];
    v19 = [v18 caseSubtypeContext];

    if (v19)
    {
      v20 = [(DiagnosticCase *)self caseStorage];
      v21 = [v20 caseSubtypeContext];
      [v4 setObject:v21 forKeyedSubscript:@"additional"];
    }

    v22 = [(DiagnosticCase *)self caseStorage];
    v23 = [v22 caseDetectedProcess];

    if (v23)
    {
      v24 = [(DiagnosticCase *)self caseStorage];
      v25 = [v24 caseDetectedProcess];
      [v4 setObject:v25 forKeyedSubscript:@"detected"];
    }

    v26 = [(DiagnosticCase *)self caseStorage];
    v27 = [v26 caseEffectiveProcess];

    if (v27)
    {
      v28 = [(DiagnosticCase *)self caseStorage];
      v29 = [v28 caseEffectiveProcess];
      [v4 setObject:v29 forKeyedSubscript:@"effective"];
    }

    v30 = [(DiagnosticCase *)self caseStorage];
    v31 = [v30 caseRelatedProcesses];

    if (v31)
    {
      v32 = [(DiagnosticCase *)self caseStorage];
      v33 = [v32 caseRelatedProcesses];
      [v4 setObject:v33 forKeyedSubscript:@"related"];
    }

    v34 = [(DiagnosticCase *)self caseStorage];
    v35 = [v34 caseThresholdValues];

    if (v35)
    {
      v36 = [(DiagnosticCase *)self caseStorage];
      v37 = [v36 caseThresholdValues];
      [v4 setObject:v37 forKeyedSubscript:@"threshval"];
    }

    v38 = [(DiagnosticCase *)self caseStorage];
    v39 = [v38 caseContext];

    if (v39)
    {
      v40 = [(DiagnosticCase *)self caseStorage];
      v41 = [v40 caseContext];
      [v4 setObject:v41 forKeyedSubscript:@"context"];
    }

    v42 = [(DiagnosticCase *)self caseStorage];
    v43 = [v42 caseGroupID];

    if (v43)
    {
      v44 = [(DiagnosticCase *)self caseStorage];
      v45 = [v44 caseGroupID];
      [v4 setObject:v45 forKeyedSubscript:@"groupID"];
    }

    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

+ (id)signatureForCaseStorage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 caseDomain];

    if (v7)
    {
      v8 = [v3 caseDomain];
      v9 = [v8 copy];
      [v5 setObject:v9 forKeyedSubscript:@"domain"];
    }

    v10 = [v3 caseType];

    if (v10)
    {
      v11 = [v3 caseType];
      v12 = [v11 copy];
      [v5 setObject:v12 forKeyedSubscript:@"type"];
    }

    v13 = [v3 caseSubtype];

    if (v13)
    {
      v14 = [v3 caseSubtype];
      v15 = [v14 copy];
      [v5 setObject:v15 forKeyedSubscript:@"subtype"];
    }

    v16 = [v3 caseSubtypeContext];

    if (v16)
    {
      v17 = [v3 caseSubtypeContext];
      v18 = [v17 copy];
      [v5 setObject:v18 forKeyedSubscript:@"additional"];
    }

    v19 = [v3 caseDetectedProcess];

    if (v19)
    {
      v20 = [v3 caseDetectedProcess];
      v21 = [v20 copy];
      [v5 setObject:v21 forKeyedSubscript:@"detected"];
    }

    v22 = [v3 caseEffectiveProcess];

    if (v22)
    {
      v23 = [v3 caseEffectiveProcess];
      v24 = [v23 copy];
      [v5 setObject:v24 forKeyedSubscript:@"effective"];
    }

    v25 = [v3 caseRelatedProcesses];

    if (v25)
    {
      v26 = [v3 caseRelatedProcesses];
      v27 = [v26 copy];
      [v5 setObject:v27 forKeyedSubscript:@"related"];
    }

    v28 = [v3 caseThresholdValues];

    if (v28)
    {
      v29 = [v3 caseThresholdValues];
      v30 = [v29 copy];
      [v5 setObject:v30 forKeyedSubscript:@"threshval"];
    }

    v31 = [v3 caseContext];

    if (v31)
    {
      v32 = [v3 caseContext];
      v33 = [v32 copy];
      [v5 setObject:v33 forKeyedSubscript:@"context"];
    }

    v34 = [v3 caseGroupID];

    if (v34)
    {
      v35 = [v3 caseGroupID];
      v36 = [v35 copy];
      [v5 setObject:v36 forKeyedSubscript:@"groupID"];
    }

    v6 = v5;
  }

  return v6;
}

+ (id)signatureForCaseStorageDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 objectForKeyedSubscript:@"caseDomain"];

    if (v7)
    {
      v8 = [v3 objectForKeyedSubscript:@"caseDomain"];
      v9 = [v8 copy];
      [v5 setObject:v9 forKeyedSubscript:@"domain"];
    }

    v10 = [v3 objectForKeyedSubscript:@"caseType"];

    if (v10)
    {
      v11 = [v3 objectForKeyedSubscript:@"caseType"];
      v12 = [v11 copy];
      [v5 setObject:v12 forKeyedSubscript:@"type"];
    }

    v13 = [v3 objectForKeyedSubscript:@"caseSubtype"];

    if (v13)
    {
      v14 = [v3 objectForKeyedSubscript:@"caseSubtype"];
      v15 = [v14 copy];
      [v5 setObject:v15 forKeyedSubscript:@"subtype"];
    }

    v16 = [v3 objectForKeyedSubscript:@"caseSubtypeContext"];

    if (v16)
    {
      v17 = [v3 objectForKeyedSubscript:@"caseSubtypeContext"];
      v18 = [v17 copy];
      [v5 setObject:v18 forKeyedSubscript:@"additional"];
    }

    v19 = [v3 objectForKeyedSubscript:@"caseDetectedProcess"];

    if (v19)
    {
      v20 = [v3 objectForKeyedSubscript:@"caseDetectedProcess"];
      v21 = [v20 copy];
      [v5 setObject:v21 forKeyedSubscript:@"detected"];
    }

    v22 = [v3 objectForKeyedSubscript:@"caseEffectiveProcess"];

    if (v22)
    {
      v23 = [v3 objectForKeyedSubscript:@"caseEffectiveProcess"];
      v24 = [v23 copy];
      [v5 setObject:v24 forKeyedSubscript:@"effective"];
    }

    v25 = [v3 objectForKeyedSubscript:@"caseRelatedProcesses"];

    if (v25)
    {
      v26 = [v3 objectForKeyedSubscript:@"caseRelatedProcesses"];
      v27 = [v26 copy];
      [v5 setObject:v27 forKeyedSubscript:@"related"];
    }

    v28 = [v3 objectForKeyedSubscript:@"caseThresholdValues"];

    if (v28)
    {
      v29 = [v3 objectForKeyedSubscript:@"caseThresholdValues"];
      v30 = [v29 copy];
      [v5 setObject:v30 forKeyedSubscript:@"threshval"];
    }

    v31 = [v3 objectForKeyedSubscript:@"caseContext"];

    if (v31)
    {
      v32 = [v3 objectForKeyedSubscript:@"caseContext"];
      v33 = [v32 copy];
      [v5 setObject:v33 forKeyedSubscript:@"context"];
    }

    v34 = [v3 objectForKeyedSubscript:@"caseGroupID"];

    if (v34)
    {
      v35 = [v3 objectForKeyedSubscript:@"caseGroupID"];
      v36 = [v35 copy];
      [v5 setObject:v36 forKeyedSubscript:@"groupID"];
    }

    v6 = v5;
  }

  return v6;
}

+ (id)descriptionForClosureType:(signed __int16)a3
{
  if (a3 >= 6)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ClosureTypeUnknown: %d", a3];
  }

  else
  {
    v3 = off_278CF2110[a3];
  }

  return v3;
}

+ (id)descriptionForDampeningType:(signed __int16)a3
{
  if ((a3 + 2) >= 0xB)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DampeningTypeUnknown: %d", a3];
  }

  else
  {
    v4 = off_278CF2140[(a3 + 2)];
  }

  return v4;
}

- (void)markAttachmentsAsPurgeable:(BOOL)a3 urgency:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = 0x10000;
  if (!a3)
  {
    v5 = 0;
  }

  v23 = v5 | a4 | 5;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(DiagnosticCase *)self attachments];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(*(&v19 + 1) + 8 * i)];
        v13 = [v12 path];
        v14 = [v6 fileExistsAtPath:v13];

        if (v14)
        {
          v15 = fsctl([v12 fileSystemRepresentation], 0xC0084A44uLL, &v23, 0);
          if (v15)
          {
            v16 = v15;
            v17 = storageLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v25 = v12;
              v26 = 1024;
              v27 = v16;
              _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Failed to mark ABC file purgeable: %{public}@, %{errno}d", buf, 0x12u);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end