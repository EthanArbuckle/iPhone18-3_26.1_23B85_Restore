@interface ATXScheduledTimeEvent
- (ATXScheduledTimeEvent)initWithCoder:(id)a3;
- (ATXScheduledTimeEvent)initWithDomainIdentifier:(id)a3 identifier:(id)a4 eventDescription:(id)a5 startDate:(id)a6 endDate:(id)a7 priority:(int64_t)a8 source:(id)a9 relevanceTag:(int64_t)a10 fuzzyTime:(int64_t)a11 context:(id)a12 isGap:(BOOL)a13 isPast:(BOOL)a14 isAllDayEvent:(BOOL)a15 isCompleted:(BOOL)a16 etaMinutes:(double)a17 mediumPresentation:(id)a18 smallPresentation:(id)a19 glyphPresentation:(id)a20 sourceLocation:(id)a21 destinationLocation:(id)a22 actions:(id)a23 feedbackOptions:(id)a24;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXScheduledTimeEvent

- (ATXScheduledTimeEvent)initWithDomainIdentifier:(id)a3 identifier:(id)a4 eventDescription:(id)a5 startDate:(id)a6 endDate:(id)a7 priority:(int64_t)a8 source:(id)a9 relevanceTag:(int64_t)a10 fuzzyTime:(int64_t)a11 context:(id)a12 isGap:(BOOL)a13 isPast:(BOOL)a14 isAllDayEvent:(BOOL)a15 isCompleted:(BOOL)a16 etaMinutes:(double)a17 mediumPresentation:(id)a18 smallPresentation:(id)a19 glyphPresentation:(id)a20 sourceLocation:(id)a21 destinationLocation:(id)a22 actions:(id)a23 feedbackOptions:(id)a24
{
  v59 = a3;
  v58 = a4;
  v57 = a5;
  obj = a6;
  v29 = a6;
  v50 = a7;
  v53 = a7;
  v30 = a9;
  v56 = a12;
  v55 = a18;
  v54 = a19;
  v31 = a20;
  v32 = a21;
  v33 = a22;
  v34 = a23;
  v35 = a24;
  v60.receiver = self;
  v60.super_class = ATXScheduledTimeEvent;
  v36 = [(ATXScheduledTimeEvent *)&v60 init];
  if (v36)
  {
    v37 = [v59 copy];
    domainIdentifier = v36->_domainIdentifier;
    v36->_domainIdentifier = v37;

    v39 = [v58 copy];
    identifier = v36->_identifier;
    v36->_identifier = v39;

    v41 = [v57 copy];
    eventDescription = v36->_eventDescription;
    v36->_eventDescription = v41;

    objc_storeStrong(&v36->_startDate, obj);
    objc_storeStrong(&v36->_endDate, v50);
    v36->_priority = a8;
    objc_storeStrong(&v36->_source, a9);
    v36->_relevanceTag = a10;
    v36->_fuzzyTime = a11;
    objc_storeStrong(&v36->_context, a12);
    v36->_isGap = a13;
    v36->_isPast = a14;
    v36->_isAllDayEvent = a15;
    v36->_isCompleted = a16;
    v36->_etaMinutes = a17;
    objc_storeStrong(&v36->_mediumPresentation, a18);
    objc_storeStrong(&v36->_smallPresentation, a19);
    objc_storeStrong(&v36->_glyphPresentation, a20);
    objc_storeStrong(&v36->_sourceLocation, a21);
    objc_storeStrong(&v36->_destinationLocation, a22);
    v43 = [v34 copy];
    actions = v36->_actions;
    v36->_actions = v43;

    v45 = [v35 copy];
    feedbackOptions = v36->_feedbackOptions;
    v36->_feedbackOptions = v45;

    v47 = v36;
  }

  return v36;
}

- (void)encodeWithCoder:(id)a3
{
  isGap = self->_isGap;
  v5 = a3;
  [v5 encodeBool:isGap forKey:@"gap"];
  [v5 encodeBool:self->_isPast forKey:@"past"];
  [v5 encodeBool:self->_isAllDayEvent forKey:@"allDay"];
  [v5 encodeInteger:self->_relevanceTag forKey:@"relevanceTag"];
  [v5 encodeInteger:self->_fuzzyTime forKey:@"fuzzyTime"];
  [v5 encodeBool:self->_isCompleted forKey:@"complete"];
  [v5 encodeInteger:self->_priority forKey:@"priority"];
  [v5 encodeObject:self->_eventDescription forKey:@"eventDescription"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_mediumPresentation forKey:@"mediumPresentation"];
  [v5 encodeObject:self->_smallPresentation forKey:@"smallPresentation"];
  [v5 encodeObject:self->_glyphPresentation forKey:@"glyphPresentation"];
  [v5 encodeObject:self->_destinationLocation forKey:@"locationDest"];
  [v5 encodeObject:self->_sourceLocation forKey:@"locationSource"];
  [v5 encodeDouble:@"minutes" forKey:self->_etaMinutes];
  [v5 encodeObject:self->_source forKey:@"source"];
  [v5 encodeObject:self->_domainIdentifier forKey:@"domainIdentifier"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_context forKey:@"context"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
  [v5 encodeObject:self->_feedbackOptions forKey:@"feedbackOptions"];
}

- (ATXScheduledTimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = ATXScheduledTimeEvent;
  v5 = [(ATXScheduledTimeEvent *)&v36 init];
  if (v5)
  {
    v5->_isGap = [v4 decodeBoolForKey:@"gap"];
    v5->_isPast = [v4 decodeBoolForKey:@"past"];
    v5->_isAllDayEvent = [v4 decodeBoolForKey:@"allDay"];
    v5->_relevanceTag = [v4 decodeIntegerForKey:@"relevanceTag"];
    v5->_fuzzyTime = [v4 decodeIntegerForKey:@"fuzzyTime"];
    v5->_isCompleted = [v4 decodeBoolForKey:@"complete"];
    v5->_priority = [v4 decodeIntegerForKey:@"priority"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDescription"];
    eventDescription = v5->_eventDescription;
    v5->_eventDescription = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediumPresentation"];
    mediumPresentation = v5->_mediumPresentation;
    v5->_mediumPresentation = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smallPresentation"];
    smallPresentation = v5->_smallPresentation;
    v5->_smallPresentation = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"glyphPresentation"];
    glyphPresentation = v5->_glyphPresentation;
    v5->_glyphPresentation = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationSource"];
    sourceLocation = v5->_sourceLocation;
    v5->_sourceLocation = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationDest"];
    destinationLocation = v5->_destinationLocation;
    v5->_destinationLocation = v20;

    [v4 decodeDoubleForKey:@"minutes"];
    v5->_etaMinutes = v22;
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v29;

    v31 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v31;

    v33 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"feedbackOptions"];
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
    v10 = [(ATXTimeEventLocation *)self->_destinationLocation geoLocation];
    v11 = [(ATXTimeEventLocation *)self->_destinationLocation title];
    v2 = [v4 stringWithFormat:@"\n\nPriority: %ld\nIs Past: %d\nEvent Description: %@\nStart Date: %@\nEnd Date: %@\nGeoLocation: %@\nLocation Title: %@\nLOI Type: %ld\n", priority, isPast, eventDescription, v8, v9, v10, v11, -[ATXTimeEventLocation destinationLOIType](self->_destinationLocation, "destinationLOIType")];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  LODWORD(v6) = *&self->_isGap;
  return [v4 initWithDomainIdentifier:self->_domainIdentifier identifier:self->_identifier eventDescription:self->_eventDescription startDate:self->_startDate endDate:self->_endDate priority:self->_priority source:self->_etaMinutes relevanceTag:self->_source fuzzyTime:self->_relevanceTag context:self->_fuzzyTime isGap:self->_context isPast:v6 isAllDayEvent:self->_mediumPresentation isCompleted:self->_smallPresentation etaMinutes:self->_glyphPresentation mediumPresentation:self->_sourceLocation smallPresentation:self->_destinationLocation glyphPresentation:self->_actions sourceLocation:self->_feedbackOptions destinationLocation:? actions:? feedbackOptions:?];
}

@end