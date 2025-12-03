@interface ATXScheduledTimeEvent
- (ATXScheduledTimeEvent)initWithCoder:(id)coder;
- (ATXScheduledTimeEvent)initWithDomainIdentifier:(id)identifier identifier:(id)a4 eventDescription:(id)description startDate:(id)date endDate:(id)endDate priority:(int64_t)priority source:(id)source relevanceTag:(int64_t)self0 fuzzyTime:(int64_t)self1 context:(id)self2 isGap:(BOOL)self3 isPast:(BOOL)self4 isAllDayEvent:(BOOL)self5 isCompleted:(BOOL)self6 etaMinutes:(double)self7 mediumPresentation:(id)self8 smallPresentation:(id)self9 glyphPresentation:(id)glyphPresentation sourceLocation:(id)location destinationLocation:(id)destinationLocation actions:(id)actions feedbackOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXScheduledTimeEvent

- (ATXScheduledTimeEvent)initWithDomainIdentifier:(id)identifier identifier:(id)a4 eventDescription:(id)description startDate:(id)date endDate:(id)endDate priority:(int64_t)priority source:(id)source relevanceTag:(int64_t)self0 fuzzyTime:(int64_t)self1 context:(id)self2 isGap:(BOOL)self3 isPast:(BOOL)self4 isAllDayEvent:(BOOL)self5 isCompleted:(BOOL)self6 etaMinutes:(double)self7 mediumPresentation:(id)self8 smallPresentation:(id)self9 glyphPresentation:(id)glyphPresentation sourceLocation:(id)location destinationLocation:(id)destinationLocation actions:(id)actions feedbackOptions:(id)options
{
  identifierCopy = identifier;
  v58 = a4;
  descriptionCopy = description;
  obj = date;
  dateCopy = date;
  endDateCopy = endDate;
  endDateCopy2 = endDate;
  sourceCopy = source;
  contextCopy = context;
  presentationCopy = presentation;
  smallPresentationCopy = smallPresentation;
  glyphPresentationCopy = glyphPresentation;
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  actionsCopy = actions;
  optionsCopy = options;
  v60.receiver = self;
  v60.super_class = ATXScheduledTimeEvent;
  v36 = [(ATXScheduledTimeEvent *)&v60 init];
  if (v36)
  {
    v37 = [identifierCopy copy];
    domainIdentifier = v36->_domainIdentifier;
    v36->_domainIdentifier = v37;

    v39 = [v58 copy];
    identifier = v36->_identifier;
    v36->_identifier = v39;

    v41 = [descriptionCopy copy];
    eventDescription = v36->_eventDescription;
    v36->_eventDescription = v41;

    objc_storeStrong(&v36->_startDate, obj);
    objc_storeStrong(&v36->_endDate, endDateCopy);
    v36->_priority = priority;
    objc_storeStrong(&v36->_source, source);
    v36->_relevanceTag = tag;
    v36->_fuzzyTime = time;
    objc_storeStrong(&v36->_context, context);
    v36->_isGap = gap;
    v36->_isPast = past;
    v36->_isAllDayEvent = event;
    v36->_isCompleted = completed;
    v36->_etaMinutes = minutes;
    objc_storeStrong(&v36->_mediumPresentation, presentation);
    objc_storeStrong(&v36->_smallPresentation, smallPresentation);
    objc_storeStrong(&v36->_glyphPresentation, glyphPresentation);
    objc_storeStrong(&v36->_sourceLocation, location);
    objc_storeStrong(&v36->_destinationLocation, destinationLocation);
    v43 = [actionsCopy copy];
    actions = v36->_actions;
    v36->_actions = v43;

    v45 = [optionsCopy copy];
    feedbackOptions = v36->_feedbackOptions;
    v36->_feedbackOptions = v45;

    v47 = v36;
  }

  return v36;
}

- (void)encodeWithCoder:(id)coder
{
  isGap = self->_isGap;
  coderCopy = coder;
  [coderCopy encodeBool:isGap forKey:@"gap"];
  [coderCopy encodeBool:self->_isPast forKey:@"past"];
  [coderCopy encodeBool:self->_isAllDayEvent forKey:@"allDay"];
  [coderCopy encodeInteger:self->_relevanceTag forKey:@"relevanceTag"];
  [coderCopy encodeInteger:self->_fuzzyTime forKey:@"fuzzyTime"];
  [coderCopy encodeBool:self->_isCompleted forKey:@"complete"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeObject:self->_eventDescription forKey:@"eventDescription"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_mediumPresentation forKey:@"mediumPresentation"];
  [coderCopy encodeObject:self->_smallPresentation forKey:@"smallPresentation"];
  [coderCopy encodeObject:self->_glyphPresentation forKey:@"glyphPresentation"];
  [coderCopy encodeObject:self->_destinationLocation forKey:@"locationDest"];
  [coderCopy encodeObject:self->_sourceLocation forKey:@"locationSource"];
  [coderCopy encodeDouble:@"minutes" forKey:self->_etaMinutes];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_domainIdentifier forKey:@"domainIdentifier"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_feedbackOptions forKey:@"feedbackOptions"];
}

- (ATXScheduledTimeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = ATXScheduledTimeEvent;
  v5 = [(ATXScheduledTimeEvent *)&v36 init];
  if (v5)
  {
    v5->_isGap = [coderCopy decodeBoolForKey:@"gap"];
    v5->_isPast = [coderCopy decodeBoolForKey:@"past"];
    v5->_isAllDayEvent = [coderCopy decodeBoolForKey:@"allDay"];
    v5->_relevanceTag = [coderCopy decodeIntegerForKey:@"relevanceTag"];
    v5->_fuzzyTime = [coderCopy decodeIntegerForKey:@"fuzzyTime"];
    v5->_isCompleted = [coderCopy decodeBoolForKey:@"complete"];
    v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDescription"];
    eventDescription = v5->_eventDescription;
    v5->_eventDescription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediumPresentation"];
    mediumPresentation = v5->_mediumPresentation;
    v5->_mediumPresentation = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smallPresentation"];
    smallPresentation = v5->_smallPresentation;
    v5->_smallPresentation = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"glyphPresentation"];
    glyphPresentation = v5->_glyphPresentation;
    v5->_glyphPresentation = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationSource"];
    sourceLocation = v5->_sourceLocation;
    v5->_sourceLocation = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationDest"];
    destinationLocation = v5->_destinationLocation;
    v5->_destinationLocation = v20;

    [coderCopy decodeDoubleForKey:@"minutes"];
    v5->_etaMinutes = v22;
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v29;

    v31 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v31;

    v33 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"feedbackOptions"];
    feedbackOptions = v5->_feedbackOptions;
    v5->_feedbackOptions = v33;
  }

  return v5;
}

- (id)description
{
  if (self->_isGap)
  {
    v2 = @"\n\nGap\n";
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    isPast = self->_isPast;
    priority = self->_priority;
    eventDescription = self->_eventDescription;
    v8 = [MEMORY[0x1E696AB78] localizedStringFromDate:self->_startDate dateStyle:1 timeStyle:1];
    v9 = [MEMORY[0x1E696AB78] localizedStringFromDate:self->_endDate dateStyle:1 timeStyle:1];
    geoLocation = [(ATXTimeEventLocation *)self->_destinationLocation geoLocation];
    title = [(ATXTimeEventLocation *)self->_destinationLocation title];
    v2 = [v4 stringWithFormat:@"\n\nPriority: %ld\nIs Past: %d\nEvent Description: %@\nStart Date: %@\nEnd Date: %@\nGeoLocation: %@\nLocation Title: %@\nLOI Type: %ld\n", priority, isPast, eventDescription, v8, v9, geoLocation, title, -[ATXTimeEventLocation destinationLOIType](self->_destinationLocation, "destinationLOIType")];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  LODWORD(v6) = *&self->_isGap;
  return [v4 initWithDomainIdentifier:self->_domainIdentifier identifier:self->_identifier eventDescription:self->_eventDescription startDate:self->_startDate endDate:self->_endDate priority:self->_priority source:self->_etaMinutes relevanceTag:self->_source fuzzyTime:self->_relevanceTag context:self->_fuzzyTime isGap:self->_context isPast:v6 isAllDayEvent:self->_mediumPresentation isCompleted:self->_smallPresentation etaMinutes:self->_glyphPresentation mediumPresentation:self->_sourceLocation smallPresentation:self->_destinationLocation glyphPresentation:self->_actions sourceLocation:self->_feedbackOptions destinationLocation:? actions:? feedbackOptions:?];
}

@end