@interface ATXStackRotationRecord
- (ATXStackRotationRecord)initWithInfoSuggestionId:(id)id clientModelId:(id)modelId criterion:(id)criterion widget:(id)widget kind:(id)kind intent:(id)intent isStalenessRotation:(BOOL)rotation rotationDate:(id)self0 durationLimit:(double)self1 coolDownInterval:(double)self2;
@end

@implementation ATXStackRotationRecord

- (ATXStackRotationRecord)initWithInfoSuggestionId:(id)id clientModelId:(id)modelId criterion:(id)criterion widget:(id)widget kind:(id)kind intent:(id)intent isStalenessRotation:(BOOL)rotation rotationDate:(id)self0 durationLimit:(double)self1 coolDownInterval:(double)self2
{
  idCopy = id;
  modelIdCopy = modelId;
  criterionCopy = criterion;
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  dateCopy = date;
  v39.receiver = self;
  v39.super_class = ATXStackRotationRecord;
  v27 = [(ATXStackRotationRecord *)&v39 init];
  if (v27)
  {
    v28 = [idCopy copy];
    infoSuggestionId = v27->_infoSuggestionId;
    v27->_infoSuggestionId = v28;

    v30 = [modelIdCopy copy];
    clientModelId = v27->_clientModelId;
    v27->_clientModelId = v30;

    v32 = [criterionCopy copy];
    criterion = v27->_criterion;
    v27->_criterion = v32;

    v34 = [widgetCopy copy];
    extensionBundleId = v27->_extensionBundleId;
    v27->_extensionBundleId = v34;

    v36 = [kindCopy copy];
    widgetKind = v27->_widgetKind;
    v27->_widgetKind = v36;

    objc_storeStrong(&v27->_intent, intent);
    v27->_isStalenessRotation = rotation;
    objc_storeStrong(&v27->_rotationDate, date);
    v27->_durationLimit = limit;
    v27->_coolDownInterval = interval;
  }

  return v27;
}

@end