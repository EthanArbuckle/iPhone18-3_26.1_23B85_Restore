@interface HKVaccinationRecord
+ (id)_newVaccinationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 vaccinationCodings:(id)self5 expirationDate:(id)self6 doseNumber:(id)self7 doseQuantity:(id)self8 lotNumber:(id)self9 performer:(id)performer bodySiteCodings:(id)siteCodings reaction:(id)reaction notGiven:(BOOL)given administrationDate:(id)administrationDate statusCoding:(id)coding patientReported:(BOOL)reported routeCodings:(id)routeCodings reasonsCodings:(id)reasonsCodings reasonsNotGivenCodings:(id)givenCodings config:(id)type0;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)vaccinationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 vaccinationCodings:(id)self4 expirationDate:(id)self5 doseNumber:(id)self6 doseQuantity:(id)self7 lotNumber:(id)self8 performer:(id)self9 bodySiteCodings:(id)siteCodings reaction:(id)reaction notGiven:(BOOL)given administrationDate:(id)administrationDate statusCoding:(id)coding patientReported:(BOOL)reported routeCodings:(id)routeCodings reasonsCodings:(id)reasonsCodings reasonsNotGivenCodings:(id)givenCodings;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)bodySite;
- (HKConcept)route;
- (HKConcept)status;
- (HKConcept)vaccination;
- (HKVaccinationRecord)init;
- (HKVaccinationRecord)initWithCoder:(id)coder;
- (NSArray)reasons;
- (NSArray)reasonsNotGiven;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)bodySiteCodingsCollection;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)reasonsCodingsCollections;
- (id)reasonsNotGivenCodingsCollections;
- (id)routeCodingsCollection;
- (id)statusCodingCollection;
- (id)vaccinationCodingsCollection;
- (void)_setAdministrationDate:(id)date;
- (void)_setBodySite:(id)site;
- (void)_setBodySiteCodings:(id)codings;
- (void)_setDoseNumber:(id)number;
- (void)_setDoseQuantity:(id)quantity;
- (void)_setExpirationDate:(id)date;
- (void)_setLotNumber:(id)number;
- (void)_setPerformer:(id)performer;
- (void)_setReaction:(id)reaction;
- (void)_setReasons:(id)reasons;
- (void)_setReasonsCodings:(id)codings;
- (void)_setReasonsNotGiven:(id)given;
- (void)_setReasonsNotGivenCodings:(id)codings;
- (void)_setRoute:(id)route;
- (void)_setRouteCodings:(id)codings;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)_setVaccination:(id)vaccination;
- (void)_setVaccinationCodings:(id)codings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKVaccinationRecord

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_VACCINATION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKVaccinationRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"vaccination"];
  [v3 addObject:@"bodySite"];
  [v3 addObject:@"status"];
  [v3 addObject:@"route"];
  [v3 addObject:@"reasons"];
  [v3 addObject:@"reasonsNotGiven"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKVaccinationRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"vaccination"])
  {
    vaccinationCodings = [(HKVaccinationRecord *)self vaccinationCodings];
    v10 = [HKMedicalCodingCollection collectionWithCodings:vaccinationCodings];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v27[0] = v11;
    v12 = MEMORY[0x1E695DEC8];
    v13 = v27;
LABEL_14:
    v14 = [v12 arrayWithObjects:v13 count:1];

LABEL_15:
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"bodySite"])
  {
    bodySiteCodings = [(HKVaccinationRecord *)self bodySiteCodings];

    if (bodySiteCodings)
    {
      vaccinationCodings = [(HKVaccinationRecord *)self bodySiteCodings];
      v10 = [HKMedicalCodingCollection collectionWithCodings:vaccinationCodings];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v26 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v26;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"status"])
  {
    statusCoding = [(HKVaccinationRecord *)self statusCoding];

    if (statusCoding)
    {
      vaccinationCodings = [(HKVaccinationRecord *)self statusCoding];
      v10 = [HKMedicalCodingCollection collectionWithCoding:vaccinationCodings];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v25 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v25;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"route"])
  {
    routeCodings = [(HKVaccinationRecord *)self routeCodings];

    if (routeCodings)
    {
      vaccinationCodings = [(HKVaccinationRecord *)self routeCodings];
      v10 = [HKMedicalCodingCollection collectionWithCodings:vaccinationCodings];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v24 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v24;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"reasons"])
  {
    reasonsCodings = [(HKVaccinationRecord *)self reasonsCodings];

    if (reasonsCodings)
    {
      reasonsCodingsCollections = [(HKVaccinationRecord *)self reasonsCodingsCollections];
LABEL_25:
      vaccinationCodings = reasonsCodingsCollections;
      v14 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:reasonsCodingsCollections context:pathCopy error:error];
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"reasonsNotGiven"])
  {
    reasonsNotGivenCodings = [(HKVaccinationRecord *)self reasonsNotGivenCodings];

    if (reasonsNotGivenCodings)
    {
      reasonsCodingsCollections = [(HKVaccinationRecord *)self reasonsNotGivenCodingsCollections];
      goto LABEL_25;
    }

LABEL_26:
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  v23.receiver = self;
  v23.super_class = HKVaccinationRecord;
  v14 = [(HKMedicalRecord *)&v23 codingsForKeyPath:pathCopy error:error];
LABEL_16:

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v11 = v10;
  if (!v10)
  {
LABEL_5:
    LOBYTE(error) = 0;
    goto LABEL_16;
  }

  if ([v10 isEqualToString:@"vaccination"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKVaccinationRecord *)self _setVaccination:object];
LABEL_15:

      LOBYTE(error) = 1;
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (![v11 isEqualToString:@"bodySite"])
  {
    if ([v11 isEqualToString:@"status"])
    {
      v15 = [conceptsCopy count];
      statusCoding = [(HKVaccinationRecord *)self statusCoding];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v15, statusCoding != 0, pathCopy, error);

      if (error)
      {
        error = [conceptsCopy firstObject];
        object = [error object];
        [(HKVaccinationRecord *)self _setStatus:object];
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if ([v11 isEqualToString:@"route"])
    {
      v17 = [conceptsCopy count];
      routeCodings = [(HKVaccinationRecord *)self routeCodings];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v17, routeCodings != 0, pathCopy, error);

      if (error)
      {
        error = [conceptsCopy firstObject];
        object = [error object];
        [(HKVaccinationRecord *)self _setRoute:object];
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if ([v11 isEqualToString:@"reasons"])
    {
      reasonsCodings = [(HKVaccinationRecord *)self reasonsCodings];

      if (reasonsCodings)
      {
        reasonsCodings2 = [(HKVaccinationRecord *)self reasonsCodings];
        v22 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonsCodings2 count], pathCopy, error);

        LOBYTE(error) = v22 != 0;
        if (v22)
        {
          [(HKVaccinationRecord *)self _setReasons:v22];
        }

LABEL_25:

        goto LABEL_16;
      }
    }

    else
    {
      if (![v11 isEqualToString:@"reasonsNotGiven"])
      {
        v26.receiver = self;
        v26.super_class = HKVaccinationRecord;
        v25 = [(HKMedicalRecord *)&v26 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
        goto LABEL_28;
      }

      reasonsNotGivenCodings = [(HKVaccinationRecord *)self reasonsNotGivenCodings];

      if (reasonsNotGivenCodings)
      {
        reasonsNotGivenCodings2 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
        v22 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonsNotGivenCodings2 count], pathCopy, error);

        LOBYTE(error) = v22 != 0;
        if (v22)
        {
          [(HKVaccinationRecord *)self _setReasonsNotGiven:v22];
        }

        goto LABEL_25;
      }
    }

    v25 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
LABEL_28:
    LOBYTE(error) = v25;
    goto LABEL_16;
  }

  v13 = [conceptsCopy count];
  bodySiteCodings = [(HKVaccinationRecord *)self bodySiteCodings];
  LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v13, bodySiteCodings != 0, pathCopy, error);

  if (error)
  {
    error = [conceptsCopy firstObject];
    object = [error object];
    [(HKVaccinationRecord *)self _setBodySite:object];
    goto LABEL_15;
  }

LABEL_16:

  return error;
}

+ (id)vaccinationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 vaccinationCodings:(id)self4 expirationDate:(id)self5 doseNumber:(id)self6 doseQuantity:(id)self7 lotNumber:(id)self8 performer:(id)self9 bodySiteCodings:(id)siteCodings reaction:(id)reaction notGiven:(BOOL)given administrationDate:(id)administrationDate statusCoding:(id)coding patientReported:(BOOL)reported routeCodings:(id)routeCodings reasonsCodings:(id)reasonsCodings reasonsNotGivenCodings:(id)givenCodings
{
  errorCopy = error;
  givenCodingsCopy = givenCodings;
  reasonsCodingsCopy = reasonsCodings;
  routeCodingsCopy = routeCodings;
  codingCopy = coding;
  administrationDateCopy = administrationDate;
  reactionCopy = reaction;
  siteCodingsCopy = siteCodings;
  performerCopy = performer;
  lotNumberCopy = lotNumber;
  quantityCopy = quantity;
  numberCopy = number;
  expirationDateCopy = expirationDate;
  codingsCopy = codings;
  countryCopy = country;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  dateForUTC = [administrationDateCopy dateForUTC];
  v46 = [HKSemanticDate semanticDateWithKeyPath:@"administrationDate" date:dateForUTC];
  LOBYTE(v35) = reported;
  LOBYTE(v34) = given;
  v50 = [HKVaccinationRecord vaccinationRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:dateCopy originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v46 country:countryCopy state:state vaccinationCodings:codingsCopy expirationDate:expirationDateCopy doseNumber:numberCopy doseQuantity:quantityCopy lotNumber:lotNumberCopy performer:performerCopy bodySiteCodings:siteCodingsCopy reaction:reactionCopy notGiven:v34 administrationDate:administrationDateCopy statusCoding:codingCopy patientReported:v35 routeCodings:routeCodingsCopy reasonsCodings:reasonsCodingsCopy reasonsNotGivenCodings:givenCodingsCopy];

  return v50;
}

+ (id)_newVaccinationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 vaccinationCodings:(id)self5 expirationDate:(id)self6 doseNumber:(id)self7 doseQuantity:(id)self8 lotNumber:(id)self9 performer:(id)performer bodySiteCodings:(id)siteCodings reaction:(id)reaction notGiven:(BOOL)given administrationDate:(id)administrationDate statusCoding:(id)coding patientReported:(BOOL)reported routeCodings:(id)routeCodings reasonsCodings:(id)reasonsCodings reasonsNotGivenCodings:(id)givenCodings config:(id)type0
{
  errorCopy = error;
  codingsCopy = codings;
  expirationDateCopy = expirationDate;
  numberCopy = number;
  quantityCopy = quantity;
  lotNumberCopy = lotNumber;
  performerCopy = performer;
  siteCodingsCopy = siteCodings;
  reactionCopy = reaction;
  administrationDateCopy = administrationDate;
  codingCopy = coding;
  routeCodingsCopy = routeCodings;
  reasonsCodingsCopy = reasonsCodings;
  givenCodingsCopy = givenCodings;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __385__HKVaccinationRecord__newVaccinationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_vaccinationCodings_expirationDate_doseNumber_doseQuantity_lotNumber_performer_bodySiteCodings_reaction_notGiven_administrationDate_statusCoding_patientReported_routeCodings_reasonsCodings_reasonsNotGivenCodings_config___block_invoke;
  aBlock[3] = &unk_1E7385420;
  v79 = codingsCopy;
  v80 = expirationDateCopy;
  v81 = numberCopy;
  v82 = quantityCopy;
  v83 = lotNumberCopy;
  v84 = performerCopy;
  v85 = siteCodingsCopy;
  v86 = reactionCopy;
  givenCopy = given;
  v87 = administrationDateCopy;
  v88 = codingCopy;
  reportedCopy = reported;
  v89 = routeCodingsCopy;
  v90 = reasonsCodingsCopy;
  v91 = givenCodingsCopy;
  v92 = configCopy;
  v68 = configCopy;
  v67 = givenCodingsCopy;
  v66 = reasonsCodingsCopy;
  v65 = routeCodingsCopy;
  v64 = codingCopy;
  v63 = administrationDateCopy;
  v62 = reactionCopy;
  v61 = siteCodingsCopy;
  v60 = performerCopy;
  v59 = lotNumberCopy;
  v58 = quantityCopy;
  v72 = numberCopy;
  v74 = expirationDateCopy;
  v76 = codingsCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v49 = _Block_copy(aBlock);
  v77.receiver = self;
  v77.super_class = &OBJC_METACLASS___HKVaccinationRecord;
  v70 = objc_msgSendSuper2(&v77, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v49);

  return v70;
}

void __385__HKVaccinationRecord__newVaccinationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_vaccinationCodings_expirationDate_doseNumber_doseQuantity_lotNumber_performer_bodySiteCodings_reaction_notGiven_administrationDate_statusCoding_patientReported_routeCodings_reasonsCodings_reasonsNotGivenCodings_config___block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v30[22];
  v30[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v30[23];
  v30[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v30[24];
  v30[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v30[25];
  v30[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v30[26];
  v30[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v30[27];
  v30[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v30[28];
  v30[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v30[29];
  v30[29] = v17;

  *(v30 + 240) = *(a1 + 144);
  v19 = [*(a1 + 96) copy];
  v20 = v30[31];
  v30[31] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v30[32];
  v30[32] = v21;

  *(v30 + 264) = *(a1 + 145);
  v23 = [*(a1 + 112) copy];
  v24 = v30[34];
  v30[34] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v30[35];
  v30[35] = v25;

  v27 = [*(a1 + 128) copy];
  v28 = v30[36];
  v30[36] = v27;

  v29 = *(a1 + 136);
  if (v29)
  {
    (*(v29 + 16))(v29, v30);
  }
}

- (HKVaccinationRecord)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10.receiver = self;
  v10.super_class = HKVaccinationRecord;
  v6 = [(HKSample *)&v10 description];
  reasonsCodings = self->_reasonsCodings;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@vaccinationCodings = %@expirationDate = %@doseNumber = %@doseQuantity = %@lotNumber = %@performer = %@bodySiteCodings = %@reaction = %@notGiven = %ldadministrationDate = %@statusCoding = %@patientReported = %ldrouteCodings = %@reasonsCodings = %@reasonsNotGivenCodings = %@>", v5, self, v6, self->_vaccinationCodings, self->_expirationDate, self->_doseNumber, self->_doseQuantity, self->_lotNumber, self->_performer, self->_bodySiteCodings, self->_reaction, self->_notGiven, self->_administrationDate, self->_statusCoding, self->_patientReported, self->_routeCodings, reasonsCodings, self->_reasonsNotGivenCodings];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKVaccinationRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_vaccinationCodings forKey:{@"VaccinationCodings", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [coderCopy encodeObject:self->_doseNumber forKey:@"DoseNumber"];
  [coderCopy encodeObject:self->_doseQuantity forKey:@"DoseQuantity"];
  [coderCopy encodeObject:self->_lotNumber forKey:@"LotNumber"];
  [coderCopy encodeObject:self->_performer forKey:@"Performer"];
  [coderCopy encodeObject:self->_bodySiteCodings forKey:@"BodySiteCodings"];
  [coderCopy encodeObject:self->_reaction forKey:@"Reaction"];
  [coderCopy encodeBool:self->_notGiven forKey:@"NotGiven"];
  [coderCopy encodeObject:self->_administrationDate forKey:@"AdministrationDate"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeBool:self->_patientReported forKey:@"PatientReported"];
  [coderCopy encodeObject:self->_routeCodings forKey:@"RouteCodings"];
  [coderCopy encodeObject:self->_reasonsCodings forKey:@"ReasonsCodings"];
  [coderCopy encodeObject:self->_reasonsNotGivenCodings forKey:@"ReasonsNotGivenCodings"];
  [coderCopy encodeObject:self->_vaccination forKey:@"Vaccination"];
  [coderCopy encodeObject:self->_bodySite forKey:@"BodySite"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_route forKey:@"Route"];
  [coderCopy encodeObject:self->_reasons forKey:@"Reasons"];
  [coderCopy encodeObject:self->_reasonsNotGiven forKey:@"ReasonsNotGiven"];
}

- (HKVaccinationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = HKVaccinationRecord;
  v5 = [(HKMedicalRecord *)&v52 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"VaccinationCodings"];
    vaccinationCodings = v5->_vaccinationCodings;
    v5->_vaccinationCodings = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoseNumber"];
    doseNumber = v5->_doseNumber;
    v5->_doseNumber = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoseQuantity"];
    doseQuantity = v5->_doseQuantity;
    v5->_doseQuantity = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LotNumber"];
    lotNumber = v5->_lotNumber;
    v5->_lotNumber = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Performer"];
    performer = v5->_performer;
    v5->_performer = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"BodySiteCodings"];
    bodySiteCodings = v5->_bodySiteCodings;
    v5->_bodySiteCodings = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Reaction"];
    reaction = v5->_reaction;
    v5->_reaction = v22;

    v5->_notGiven = [coderCopy decodeBoolForKey:@"NotGiven"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AdministrationDate"];
    administrationDate = v5->_administrationDate;
    v5->_administrationDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v26;

    v5->_patientReported = [coderCopy decodeBoolForKey:@"PatientReported"];
    v28 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"RouteCodings"];
    routeCodings = v5->_routeCodings;
    v5->_routeCodings = v29;

    v31 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"ReasonsCodings"];
    reasonsCodings = v5->_reasonsCodings;
    v5->_reasonsCodings = v32;

    v34 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"ReasonsNotGivenCodings"];
    reasonsNotGivenCodings = v5->_reasonsNotGivenCodings;
    v5->_reasonsNotGivenCodings = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Vaccination"];
    vaccination = v5->_vaccination;
    v5->_vaccination = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BodySite"];
    bodySite = v5->_bodySite;
    v5->_bodySite = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Route"];
    route = v5->_route;
    v5->_route = v43;

    v45 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"Reasons"];
    reasons = v5->_reasons;
    v5->_reasons = v46;

    v48 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"ReasonsNotGiven"];
    reasonsNotGiven = v5->_reasonsNotGiven;
    v5->_reasonsNotGiven = v49;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
    v126.receiver = self;
    v126.super_class = HKVaccinationRecord;
    if (![(HKMedicalRecord *)&v126 isEquivalent:v5])
    {
      goto LABEL_101;
    }

    vaccinationCodings = [(HKVaccinationRecord *)self vaccinationCodings];
    vaccinationCodings2 = [v5 vaccinationCodings];
    v8 = vaccinationCodings2;
    if (vaccinationCodings == vaccinationCodings2)
    {
    }

    else
    {
      vaccinationCodings3 = [v5 vaccinationCodings];
      if (!vaccinationCodings3)
      {
        goto LABEL_100;
      }

      v10 = vaccinationCodings3;
      vaccinationCodings4 = [(HKVaccinationRecord *)self vaccinationCodings];
      vaccinationCodings5 = [v5 vaccinationCodings];
      v13 = [vaccinationCodings4 isEqualToArray:vaccinationCodings5];

      if (!v13)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self expirationDate];
    expirationDate = [v5 expirationDate];
    v8 = expirationDate;
    if (vaccinationCodings == expirationDate)
    {
    }

    else
    {
      expirationDate2 = [v5 expirationDate];
      if (!expirationDate2)
      {
        goto LABEL_100;
      }

      v17 = expirationDate2;
      expirationDate3 = [(HKVaccinationRecord *)self expirationDate];
      expirationDate4 = [v5 expirationDate];
      v20 = [expirationDate3 isEqual:expirationDate4];

      if (!v20)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self doseNumber];
    doseNumber = [v5 doseNumber];
    v8 = doseNumber;
    if (vaccinationCodings == doseNumber)
    {
    }

    else
    {
      doseNumber2 = [v5 doseNumber];
      if (!doseNumber2)
      {
        goto LABEL_100;
      }

      v23 = doseNumber2;
      doseNumber3 = [(HKVaccinationRecord *)self doseNumber];
      doseNumber4 = [v5 doseNumber];
      v26 = [doseNumber3 isEqualToString:doseNumber4];

      if (!v26)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self doseQuantity];
    doseQuantity = [v5 doseQuantity];
    v8 = doseQuantity;
    if (vaccinationCodings == doseQuantity)
    {
    }

    else
    {
      doseQuantity2 = [v5 doseQuantity];
      if (!doseQuantity2)
      {
        goto LABEL_100;
      }

      v29 = doseQuantity2;
      doseQuantity3 = [(HKVaccinationRecord *)self doseQuantity];
      doseQuantity4 = [v5 doseQuantity];
      v32 = [doseQuantity3 isEqualToString:doseQuantity4];

      if (!v32)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self lotNumber];
    lotNumber = [v5 lotNumber];
    v8 = lotNumber;
    if (vaccinationCodings == lotNumber)
    {
    }

    else
    {
      lotNumber2 = [v5 lotNumber];
      if (!lotNumber2)
      {
        goto LABEL_100;
      }

      v35 = lotNumber2;
      lotNumber3 = [(HKVaccinationRecord *)self lotNumber];
      lotNumber4 = [v5 lotNumber];
      v38 = [lotNumber3 isEqualToString:lotNumber4];

      if (!v38)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self performer];
    performer = [v5 performer];
    v8 = performer;
    if (vaccinationCodings == performer)
    {
    }

    else
    {
      performer2 = [v5 performer];
      if (!performer2)
      {
        goto LABEL_100;
      }

      v41 = performer2;
      performer3 = [(HKVaccinationRecord *)self performer];
      performer4 = [v5 performer];
      v44 = [performer3 isEqualToString:performer4];

      if (!v44)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self bodySiteCodings];
    bodySiteCodings = [v5 bodySiteCodings];
    v8 = bodySiteCodings;
    if (vaccinationCodings == bodySiteCodings)
    {
    }

    else
    {
      bodySiteCodings2 = [v5 bodySiteCodings];
      if (!bodySiteCodings2)
      {
        goto LABEL_100;
      }

      v47 = bodySiteCodings2;
      bodySiteCodings3 = [(HKVaccinationRecord *)self bodySiteCodings];
      bodySiteCodings4 = [v5 bodySiteCodings];
      v50 = [bodySiteCodings3 isEqualToArray:bodySiteCodings4];

      if (!v50)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self reaction];
    reaction = [v5 reaction];
    v8 = reaction;
    if (vaccinationCodings == reaction)
    {
    }

    else
    {
      reaction2 = [v5 reaction];
      if (!reaction2)
      {
        goto LABEL_100;
      }

      v53 = reaction2;
      reaction3 = [(HKVaccinationRecord *)self reaction];
      reaction4 = [v5 reaction];
      v56 = [reaction3 isEqualToString:reaction4];

      if (!v56)
      {
        goto LABEL_101;
      }
    }

    notGiven = [(HKVaccinationRecord *)self notGiven];
    if (notGiven != [v5 notGiven])
    {
      goto LABEL_101;
    }

    vaccinationCodings = [(HKVaccinationRecord *)self administrationDate];
    administrationDate = [v5 administrationDate];
    v8 = administrationDate;
    if (vaccinationCodings == administrationDate)
    {
    }

    else
    {
      administrationDate2 = [v5 administrationDate];
      if (!administrationDate2)
      {
        goto LABEL_100;
      }

      v60 = administrationDate2;
      administrationDate3 = [(HKVaccinationRecord *)self administrationDate];
      administrationDate4 = [v5 administrationDate];
      v63 = [administrationDate3 isEqual:administrationDate4];

      if (!v63)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self statusCoding];
    statusCoding = [v5 statusCoding];
    v8 = statusCoding;
    if (vaccinationCodings == statusCoding)
    {
    }

    else
    {
      statusCoding2 = [v5 statusCoding];
      if (!statusCoding2)
      {
        goto LABEL_100;
      }

      v66 = statusCoding2;
      statusCoding3 = [(HKVaccinationRecord *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v69 = [statusCoding3 isEqual:statusCoding4];

      if (!v69)
      {
        goto LABEL_101;
      }
    }

    patientReported = [(HKVaccinationRecord *)self patientReported];
    if (patientReported != [v5 patientReported])
    {
      goto LABEL_101;
    }

    vaccinationCodings = [(HKVaccinationRecord *)self routeCodings];
    routeCodings = [v5 routeCodings];
    v8 = routeCodings;
    if (vaccinationCodings == routeCodings)
    {
    }

    else
    {
      routeCodings2 = [v5 routeCodings];
      if (!routeCodings2)
      {
        goto LABEL_100;
      }

      v73 = routeCodings2;
      routeCodings3 = [(HKVaccinationRecord *)self routeCodings];
      routeCodings4 = [v5 routeCodings];
      v76 = [routeCodings3 isEqualToArray:routeCodings4];

      if (!v76)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self reasonsCodings];
    reasonsCodings = [v5 reasonsCodings];
    v8 = reasonsCodings;
    if (vaccinationCodings == reasonsCodings)
    {
    }

    else
    {
      reasonsCodings2 = [v5 reasonsCodings];
      if (!reasonsCodings2)
      {
        goto LABEL_100;
      }

      v79 = reasonsCodings2;
      reasonsCodings3 = [(HKVaccinationRecord *)self reasonsCodings];
      reasonsCodings4 = [v5 reasonsCodings];
      v82 = [reasonsCodings3 isEqualToArray:reasonsCodings4];

      if (!v82)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
    reasonsNotGivenCodings = [v5 reasonsNotGivenCodings];
    v8 = reasonsNotGivenCodings;
    if (vaccinationCodings == reasonsNotGivenCodings)
    {
    }

    else
    {
      reasonsNotGivenCodings2 = [v5 reasonsNotGivenCodings];
      if (!reasonsNotGivenCodings2)
      {
        goto LABEL_100;
      }

      v85 = reasonsNotGivenCodings2;
      reasonsNotGivenCodings3 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
      reasonsNotGivenCodings4 = [v5 reasonsNotGivenCodings];
      v88 = [reasonsNotGivenCodings3 isEqualToArray:reasonsNotGivenCodings4];

      if (!v88)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self vaccination];
    vaccination = [v5 vaccination];
    v8 = vaccination;
    if (vaccinationCodings == vaccination)
    {
    }

    else
    {
      vaccination2 = [v5 vaccination];
      if (!vaccination2)
      {
        goto LABEL_100;
      }

      v91 = vaccination2;
      vaccination3 = [(HKVaccinationRecord *)self vaccination];
      vaccination4 = [v5 vaccination];
      v94 = [vaccination3 isEqual:vaccination4];

      if (!v94)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self bodySite];
    bodySite = [v5 bodySite];
    v8 = bodySite;
    if (vaccinationCodings == bodySite)
    {
    }

    else
    {
      bodySite2 = [v5 bodySite];
      if (!bodySite2)
      {
        goto LABEL_100;
      }

      v97 = bodySite2;
      bodySite3 = [(HKVaccinationRecord *)self bodySite];
      bodySite4 = [v5 bodySite];
      v100 = [bodySite3 isEqual:bodySite4];

      if (!v100)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self status];
    status = [v5 status];
    v8 = status;
    if (vaccinationCodings == status)
    {
    }

    else
    {
      status2 = [v5 status];
      if (!status2)
      {
        goto LABEL_100;
      }

      v103 = status2;
      status3 = [(HKVaccinationRecord *)self status];
      status4 = [v5 status];
      v106 = [status3 isEqual:status4];

      if (!v106)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self route];
    route = [v5 route];
    v8 = route;
    if (vaccinationCodings == route)
    {
    }

    else
    {
      route2 = [v5 route];
      if (!route2)
      {
        goto LABEL_100;
      }

      v109 = route2;
      route3 = [(HKVaccinationRecord *)self route];
      route4 = [v5 route];
      v112 = [route3 isEqual:route4];

      if (!v112)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self reasons];
    reasons = [v5 reasons];
    v8 = reasons;
    if (vaccinationCodings == reasons)
    {
    }

    else
    {
      reasons2 = [v5 reasons];
      if (!reasons2)
      {
        goto LABEL_100;
      }

      v115 = reasons2;
      reasons3 = [(HKVaccinationRecord *)self reasons];
      reasons4 = [v5 reasons];
      v118 = [reasons3 isEqualToArray:reasons4];

      if (!v118)
      {
        goto LABEL_101;
      }
    }

    vaccinationCodings = [(HKVaccinationRecord *)self reasonsNotGiven];
    reasonsNotGiven = [v5 reasonsNotGiven];
    v8 = reasonsNotGiven;
    if (vaccinationCodings == reasonsNotGiven)
    {

LABEL_105:
      v14 = 1;
      goto LABEL_102;
    }

    reasonsNotGiven2 = [v5 reasonsNotGiven];
    if (reasonsNotGiven2)
    {
      v121 = reasonsNotGiven2;
      reasonsNotGiven3 = [(HKVaccinationRecord *)self reasonsNotGiven];
      reasonsNotGiven4 = [v5 reasonsNotGiven];
      v124 = [reasonsNotGiven3 isEqualToArray:reasonsNotGiven4];

      if (v124)
      {
        goto LABEL_105;
      }

LABEL_101:
      v14 = 0;
LABEL_102:

      goto LABEL_103;
    }

LABEL_100:

    goto LABEL_101;
  }

  v14 = 0;
LABEL_103:

  return v14;
}

- (id)vaccinationCodingsCollection
{
  vaccinationCodings = [(HKVaccinationRecord *)self vaccinationCodings];
  v3 = [HKMedicalCodingCollection collectionWithCodings:vaccinationCodings];

  return v3;
}

- (id)bodySiteCodingsCollection
{
  bodySiteCodings = [(HKVaccinationRecord *)self bodySiteCodings];

  if (bodySiteCodings)
  {
    bodySiteCodings2 = [(HKVaccinationRecord *)self bodySiteCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:bodySiteCodings2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKVaccinationRecord *)self statusCoding];

  if (statusCoding)
  {
    statusCoding2 = [(HKVaccinationRecord *)self statusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:statusCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)routeCodingsCollection
{
  routeCodings = [(HKVaccinationRecord *)self routeCodings];

  if (routeCodings)
  {
    routeCodings2 = [(HKVaccinationRecord *)self routeCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:routeCodings2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reasonsCodingsCollections
{
  reasonsCodings = [(HKVaccinationRecord *)self reasonsCodings];

  if (reasonsCodings)
  {
    reasonsCodings2 = [(HKVaccinationRecord *)self reasonsCodings];
    v5 = [reasonsCodings2 hk_map:&__block_literal_global_140];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reasonsNotGivenCodingsCollections
{
  reasonsNotGivenCodings = [(HKVaccinationRecord *)self reasonsNotGivenCodings];

  if (reasonsNotGivenCodings)
  {
    reasonsNotGivenCodings2 = [(HKVaccinationRecord *)self reasonsNotGivenCodings];
    v5 = [reasonsNotGivenCodings2 hk_map:&__block_literal_global_154_0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setVaccinationCodings:(id)codings
{
  v4 = [codings copy];
  vaccinationCodings = self->_vaccinationCodings;
  self->_vaccinationCodings = v4;

  vaccinationCodingsCollection = [(HKVaccinationRecord *)self vaccinationCodingsCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:vaccinationCodingsCollection];
  vaccination = self->_vaccination;
  self->_vaccination = v6;
}

- (void)_setExpirationDate:(id)date
{
  v4 = [date copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v4;

  MEMORY[0x1EEE66BB8](v4, expirationDate);
}

- (void)_setDoseNumber:(id)number
{
  v4 = [number copy];
  doseNumber = self->_doseNumber;
  self->_doseNumber = v4;

  MEMORY[0x1EEE66BB8](v4, doseNumber);
}

- (void)_setDoseQuantity:(id)quantity
{
  v4 = [quantity copy];
  doseQuantity = self->_doseQuantity;
  self->_doseQuantity = v4;

  MEMORY[0x1EEE66BB8](v4, doseQuantity);
}

- (void)_setLotNumber:(id)number
{
  v4 = [number copy];
  lotNumber = self->_lotNumber;
  self->_lotNumber = v4;

  MEMORY[0x1EEE66BB8](v4, lotNumber);
}

- (void)_setPerformer:(id)performer
{
  v4 = [performer copy];
  performer = self->_performer;
  self->_performer = v4;

  MEMORY[0x1EEE66BB8](v4, performer);
}

- (void)_setBodySiteCodings:(id)codings
{
  v4 = [codings copy];
  bodySiteCodings = self->_bodySiteCodings;
  self->_bodySiteCodings = v4;

  if (self->_bodySiteCodings)
  {
    bodySiteCodingsCollection = [(HKVaccinationRecord *)self bodySiteCodingsCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:bodySiteCodingsCollection];
    bodySite = self->_bodySite;
    self->_bodySite = v6;

    v8 = bodySiteCodingsCollection;
  }

  else
  {
    v8 = self->_bodySite;
    self->_bodySite = 0;
  }
}

- (void)_setReaction:(id)reaction
{
  v4 = [reaction copy];
  reaction = self->_reaction;
  self->_reaction = v4;

  MEMORY[0x1EEE66BB8](v4, reaction);
}

- (void)_setAdministrationDate:(id)date
{
  v4 = [date copy];
  administrationDate = self->_administrationDate;
  self->_administrationDate = v4;

  MEMORY[0x1EEE66BB8](v4, administrationDate);
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  if (self->_statusCoding)
  {
    statusCodingCollection = [(HKVaccinationRecord *)self statusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
    status = self->_status;
    self->_status = v6;

    v8 = statusCodingCollection;
  }

  else
  {
    v8 = self->_status;
    self->_status = 0;
  }
}

- (void)_setRouteCodings:(id)codings
{
  v4 = [codings copy];
  routeCodings = self->_routeCodings;
  self->_routeCodings = v4;

  if (self->_routeCodings)
  {
    routeCodingsCollection = [(HKVaccinationRecord *)self routeCodingsCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:routeCodingsCollection];
    route = self->_route;
    self->_route = v6;

    v8 = routeCodingsCollection;
  }

  else
  {
    v8 = self->_route;
    self->_route = 0;
  }
}

- (void)_setReasonsCodings:(id)codings
{
  v4 = [codings copy];
  reasonsCodings = self->_reasonsCodings;
  self->_reasonsCodings = v4;

  if (self->_reasonsCodings)
  {
    reasonsCodingsCollections = [(HKVaccinationRecord *)self reasonsCodingsCollections];
    v6 = [(NSArray *)reasonsCodingsCollections hk_map:&__block_literal_global_158_0];
    reasons = self->_reasons;
    self->_reasons = v6;

    v8 = reasonsCodingsCollections;
  }

  else
  {
    v8 = self->_reasons;
    self->_reasons = 0;
  }
}

- (void)_setReasonsNotGivenCodings:(id)codings
{
  v4 = [codings copy];
  reasonsNotGivenCodings = self->_reasonsNotGivenCodings;
  self->_reasonsNotGivenCodings = v4;

  if (self->_reasonsNotGivenCodings)
  {
    reasonsNotGivenCodingsCollections = [(HKVaccinationRecord *)self reasonsNotGivenCodingsCollections];
    v6 = [(NSArray *)reasonsNotGivenCodingsCollections hk_map:&__block_literal_global_160_1];
    reasonsNotGiven = self->_reasonsNotGiven;
    self->_reasonsNotGiven = v6;

    v8 = reasonsNotGivenCodingsCollections;
  }

  else
  {
    v8 = self->_reasonsNotGiven;
    self->_reasonsNotGiven = 0;
  }
}

- (HKConcept)vaccination
{
  vaccination = self->_vaccination;
  if (vaccination)
  {
    v3 = vaccination;
  }

  else
  {
    vaccinationCodingsCollection = [(HKVaccinationRecord *)self vaccinationCodingsCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:vaccinationCodingsCollection];
  }

  return v3;
}

- (void)_setVaccination:(id)vaccination
{
  vaccinationCopy = vaccination;
  if (!vaccinationCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKVaccinationRecord _setVaccination:v5];
    }
  }

  v6 = [vaccinationCopy copy];
  vaccination = self->_vaccination;
  self->_vaccination = v6;
}

- (HKConcept)bodySite
{
  if (self->_bodySiteCodings)
  {
    bodySite = self->_bodySite;
    if (bodySite)
    {
      v3 = bodySite;
    }

    else
    {
      bodySiteCodingsCollection = [(HKVaccinationRecord *)self bodySiteCodingsCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:bodySiteCodingsCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySite:(id)site
{
  v4 = [site copy];
  bodySite = self->_bodySite;
  self->_bodySite = v4;

  MEMORY[0x1EEE66BB8](v4, bodySite);
}

- (HKConcept)status
{
  if (self->_statusCoding)
  {
    status = self->_status;
    if (status)
    {
      v3 = status;
    }

    else
    {
      statusCodingCollection = [(HKVaccinationRecord *)self statusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setStatus:(id)status
{
  v4 = [status copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8](v4, status);
}

- (HKConcept)route
{
  if (self->_routeCodings)
  {
    route = self->_route;
    if (route)
    {
      v3 = route;
    }

    else
    {
      routeCodingsCollection = [(HKVaccinationRecord *)self routeCodingsCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:routeCodingsCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setRoute:(id)route
{
  v4 = [route copy];
  route = self->_route;
  self->_route = v4;

  MEMORY[0x1EEE66BB8](v4, route);
}

- (NSArray)reasons
{
  if (self->_reasonsCodings)
  {
    reasons = self->_reasons;
    if (reasons)
    {
      v3 = reasons;
    }

    else
    {
      reasonsCodingsCollections = [(HKVaccinationRecord *)self reasonsCodingsCollections];
      v3 = [reasonsCodingsCollections hk_map:&__block_literal_global_162];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasons:(id)reasons
{
  v4 = [reasons copy];
  reasons = self->_reasons;
  self->_reasons = v4;

  MEMORY[0x1EEE66BB8](v4, reasons);
}

- (NSArray)reasonsNotGiven
{
  if (self->_reasonsNotGivenCodings)
  {
    reasonsNotGiven = self->_reasonsNotGiven;
    if (reasonsNotGiven)
    {
      v3 = reasonsNotGiven;
    }

    else
    {
      reasonsNotGivenCodingsCollections = [(HKVaccinationRecord *)self reasonsNotGivenCodingsCollections];
      v3 = [reasonsNotGivenCodingsCollections hk_map:&__block_literal_global_164];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonsNotGiven:(id)given
{
  v4 = [given copy];
  reasonsNotGiven = self->_reasonsNotGiven;
  self->_reasonsNotGiven = v4;

  MEMORY[0x1EEE66BB8](v4, reasonsNotGiven);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKVaccinationRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_vaccinationCodings)
    {
      if (self->_administrationDate)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: administrationDate must not be nil";
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: vaccinationCodings must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

@end