@interface EKUILocationEditItemModel
- (BOOL)displaysPlaceholder;
- (BOOL)hasMapLocation;
- (BOOL)hasVirtualConference;
- (BOOL)rowModelRepresentsConferenceRoom:(id)room onEvent:(id)event;
- (BOOL)shouldDisplayRowModelWithConferenceCell:(id)cell event:(id)event;
- (EKUILocationEditItemModel)init;
- (EKUILocationRowModel)mapLocationRowModel;
- (EKUILocationRowModel)virtualConferenceRowModel;
- (NSString)placeholderCellText;
- (id)_conferenceRoomNameForLocation:(id)location;
- (id)_participantForConferenceRoomName:(id)name event:(id)event;
- (id)_rowModelForCell:(id)cell;
- (int64_t)indexOfPredictedLocation;
- (void)_deleteVirtualConferenceOnEvent:(id)event forRowModel:(id)model;
- (void)_removeConferenceAttendeeOnEvent:(id)event forRowModel:(id)model;
- (void)_updateConferenceDataOnEvent:(id)event forNewLocation:(id)location;
- (void)_updateLocationsOnEvent:(id)event;
- (void)rebuild:(id)rebuild;
- (void)refreshConferenceRoomCell:(id)cell event:(id)event;
- (void)removeConferenceRoomAttendeeIfNeeded:(id)needed event:(id)event;
- (void)removeRowModel:(id)model event:(id)event;
- (void)removeRowModelAtIndex:(unint64_t)index event:(id)event;
- (void)reset;
- (void)updateAvailabilityInformation:(id)information;
- (void)updateRowModel:(id)model withConferenceRoom:(id)room editItem:(id)item;
- (void)updateRowModel:(id)model withMapLocation:(id)location event:(id)event;
- (void)updateRowModel:(id)model withVirtualConference:(id)conference event:(id)event;
@end

@implementation EKUILocationEditItemModel

- (EKUILocationEditItemModel)init
{
  v8.receiver = self;
  v8.super_class = EKUILocationEditItemModel;
  v2 = [(EKUILocationEditItemModel *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    conferenceRoomInfos = v2->_conferenceRoomInfos;
    v2->_conferenceRoomInfos = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    rowModels = v2->_rowModels;
    v2->_rowModels = array;
  }

  return v2;
}

- (void)reset
{
  [(NSMutableDictionary *)self->_conferenceRoomInfos enumerateKeysAndObjectsUsingBlock:&__block_literal_global_12];
  [(NSMutableArray *)self->_rowModels removeAllObjects];
  conferenceRoomInfos = self->_conferenceRoomInfos;

  [(NSMutableDictionary *)conferenceRoomInfos removeAllObjects];
}

void __34__EKUILocationEditItemModel_reset__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 availabilityRequest];
  [v3 cancel];
}

- (void)rebuild:(id)rebuild
{
  v70 = *MEMORY[0x1E69E9840];
  rebuildCopy = rebuild;
  [(EKUILocationEditItemModel *)self reset];
  v51 = rebuildCopy;
  [rebuildCopy event];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v52 = v67 = 0u;
  attendees = [v52 attendees];
  v6 = [attendees countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v65;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(attendees);
        }

        v10 = *(*(&v64 + 1) + 8 * i);
        if ([v10 participantType] == 2)
        {
          v11 = objc_alloc_init(EKUIConferenceRoomInfo);
          conferenceRoomInfos = self->_conferenceRoomInfos;
          name = [v10 name];
          [(NSMutableDictionary *)conferenceRoomInfos setObject:v11 forKey:name];
        }
      }

      v7 = [attendees countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v7);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  structuredLocation = [v52 structuredLocation];
  preferredLocationWithoutPrediction = [v52 preferredLocationWithoutPrediction];
  title = [preferredLocationWithoutPrediction title];
  v19 = [title componentsSeparatedByString:@" "];;

  v20 = array;
  v63 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  obj = v19;
  v21 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  v53 = array;
  if (v21)
  {
    v22 = v21;
    v23 = *v61;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v61 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v60 + 1) + 8 * j);
        v26 = [(NSMutableDictionary *)self->_conferenceRoomInfos objectForKey:v25];
        if (v26)
        {
          v27 = [[EKUILocationRowModel alloc] initWithConferenceRoom:v25];
          [array2 addObject:v27];

          [v20 addObject:v26];
        }

        else if (structuredLocation)
        {
          if ([structuredLocation isPrediction])
          {
            rowModels = self->_rowModels;
            v29 = [[EKUILocationRowModel alloc] initWithSuggestedLocation:v25];
            [(NSMutableArray *)rowModels addObject:v29];
          }

          else
          {
            v30 = [structuredLocation copy];
            [v30 setTitle:v25];
            v31 = self->_rowModels;
            v32 = [[EKUILocationRowModel alloc] initWithStructuredLocation:v30];
            [(NSMutableArray *)v31 addObject:v32];
          }

          v20 = v53;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v22);
  }

  allValues = [(NSMutableDictionary *)self->_conferenceRoomInfos allValues];
  v34 = [v20 count];
  if (v34 != [allValues count])
  {
    v35 = self->_conferenceRoomInfos;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __37__EKUILocationEditItemModel_rebuild___block_invoke;
    v57[3] = &unk_1E843FC60;
    v58 = v20;
    v59 = array2;
    [(NSMutableDictionary *)v35 enumerateKeysAndObjectsUsingBlock:v57];
  }

  preferredLocation = [v52 preferredLocation];
  if ([preferredLocation isStructured] && !obj)
  {
    isPrediction = [preferredLocation isPrediction];
    v38 = self->_rowModels;
    v39 = [EKUILocationRowModel alloc];
    if (isPrediction)
    {
      title2 = [preferredLocation title];
      v41 = [(EKUILocationRowModel *)v39 initWithSuggestedLocation:title2];
    }

    else
    {
      title2 = [preferredLocation copy];
      v41 = [(EKUILocationRowModel *)v39 initWithStructuredLocation:title2];
    }

    v42 = v41;
    [(NSMutableArray *)v38 addObject:v41];

    v20 = v53;
  }

  virtualConference = [v52 virtualConference];
  v44 = virtualConference;
  if (virtualConference)
  {
    v45 = MEMORY[0x1E696AE18];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __37__EKUILocationEditItemModel_rebuild___block_invoke_2;
    v55[3] = &unk_1E843FC88;
    v46 = virtualConference;
    v56 = v46;
    v47 = [v45 predicateWithBlock:v55];
    [array2 filterUsingPredicate:v47];

    v48 = [EKUILocationRowModel alloc];
    v49 = v46;
    v20 = v53;
    v50 = [(EKUILocationRowModel *)v48 initWithVirtualConference:v49];
    [(NSMutableArray *)self->_rowModels addObject:v50];
  }

  [(NSMutableArray *)self->_rowModels addObjectsFromArray:array2];
  [(EKUILocationEditItemModel *)self reorderRowModels];
  [(EKUILocationEditItemModel *)self updateAvailabilityInformation:v51];
}

void __37__EKUILocationEditItemModel_rebuild___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:a3] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [[EKUILocationRowModel alloc] initWithConferenceRoom:v7];
    [v5 addObject:v6];
  }
}

uint64_t __37__EKUILocationEditItemModel_rebuild___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serializationBlockTitle];
  v5 = [v3 location];

  v6 = [v5 title];
  v7 = [v4 isEqualToString:v6];

  return v7 ^ 1u;
}

- (BOOL)hasVirtualConference
{
  virtualConferenceRowModel = [(EKUILocationEditItemModel *)self virtualConferenceRowModel];
  v3 = virtualConferenceRowModel != 0;

  return v3;
}

- (EKUILocationRowModel)virtualConferenceRowModel
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_rowModels;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 locationType] == 2)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasMapLocation
{
  mapLocationRowModel = [(EKUILocationEditItemModel *)self mapLocationRowModel];
  v3 = mapLocationRowModel != 0;

  return v3;
}

- (EKUILocationRowModel)mapLocationRowModel
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_rowModels;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 locationType] == 1)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)displaysPlaceholder
{
  hasVirtualConference = [(EKUILocationEditItemModel *)self hasVirtualConference];
  v4 = [(NSMutableArray *)self->_rowModels count];
  result = v4 == 0;
  if (v4)
  {
    if (!hasVirtualConference)
    {
      return ![(EKUILocationEditItemModel *)self hasMapLocation];
    }
  }

  return result;
}

- (NSString)placeholderCellText
{
  if ([(EKUILocationEditItemModel *)self displaysPlaceholder])
  {
    v2 = EventKitUIBundle();
    v3 = [v2 localizedStringForKey:@"Location or Video Call" value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateConferenceDataOnEvent:(id)event forNewLocation:(id)location
{
  v13 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = [(EKUILocationEditItemModel *)self _conferenceRoomNameForLocation:location];
  v8 = [(NSMutableDictionary *)self->_conferenceRoomInfos objectForKey:v7];

  if (!v8)
  {
    [eventCopy setClientLocation:0];
    travelStartLocation = [eventCopy travelStartLocation];

    if (travelStartLocation)
    {
      v10 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412290;
        v12 = eventCopy;
        _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Clearing start location and travel time on event: [%@]", &v11, 0xCu);
      }

      [eventCopy setTravelStartLocation:0];
      [eventCopy setTravelTime:0.0];
    }
  }
}

- (void)_removeConferenceAttendeeOnEvent:(id)event forRowModel:(id)model
{
  eventCopy = event;
  modelCopy = model;
  location = [modelCopy location];

  if (location)
  {
    location2 = [modelCopy location];

    [(EKUILocationEditItemModel *)self _conferenceRoomNameForLocation:location2];
  }

  else
  {
    location2 = [modelCopy conference];

    [location2 serializationBlockTitle];
  }
  v9 = ;

  v10 = [(EKUILocationEditItemModel *)self _participantForConferenceRoomName:v9 event:eventCopy];
  if (v10)
  {
    [eventCopy removeAttendee:v10];
    [(NSMutableDictionary *)self->_conferenceRoomInfos removeObjectForKey:v9];
  }
}

- (void)_deleteVirtualConferenceOnEvent:(id)event forRowModel:(id)model
{
  eventCopy = event;
  if ([model locationType] == 2)
  {
    [eventCopy setVirtualConference:0];
  }
}

- (void)_updateLocationsOnEvent:(id)event
{
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_rowModels, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = self->_rowModels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v5)
  {
    v7 = 0;
    v27 = 0;
    goto LABEL_20;
  }

  v6 = v5;
  v7 = 0;
  v27 = 0;
  v8 = *v30;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v29 + 1) + 8 * i);
      locationType = [v10 locationType];
      if (locationType > 1)
      {
        if (locationType != 2)
        {
          continue;
        }

        if ([(EKUILocationEditItemModel *)self rowModelRepresentsConferenceRoom:v10 onEvent:eventCopy])
        {
          conference = [v10 conference];
          serializationBlockTitle = [conference serializationBlockTitle];
          [v28 addObject:serializationBlockTitle];
        }

        [v10 conference];
        v7 = location4 = v7;
        goto LABEL_15;
      }

      location = [v10 location];
      title = [location title];

      if (title)
      {
        location2 = [v10 location];
        title2 = [location2 title];
        [v28 addObject:title2];
      }

      conferenceRoomInfos = self->_conferenceRoomInfos;
      location3 = [v10 location];
      title3 = [location3 title];
      v19 = [(NSMutableDictionary *)conferenceRoomInfos objectForKey:title3];

      if (!v19)
      {
        location4 = [v10 location];
        duplicate = [location4 duplicate];

        v27 = duplicate;
LABEL_15:

        continue;
      }
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v6);
LABEL_20:

  v24 = [MEMORY[0x1E6966A08] _locationStringForLocations:v28];
  v25 = v27;
  if (!v27)
  {
    if ([v28 count])
    {
      v25 = [MEMORY[0x1E6966B08] locationWithTitle:v24];
    }

    else
    {
      v25 = 0;
    }
  }

  [v25 setTitle:v24];
  [eventCopy setStructuredLocation:v25];
  [eventCopy setVirtualConference:v7];
  if (v7)
  {
    [EKUIDiscoverabilityUtilities sendDiscoverabilitySignalForConference:v7];
  }
}

- (void)removeRowModel:(id)model event:(id)event
{
  eventCopy = event;
  v6 = [(NSMutableArray *)self->_rowModels indexOfObject:model];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EKUILocationEditItemModel *)self removeRowModelAtIndex:v6 event:eventCopy];
  }
}

- (void)removeRowModelAtIndex:(unint64_t)index event:(id)event
{
  eventCopy = event;
  v6 = [(NSMutableArray *)self->_rowModels objectAtIndex:index];
  [(EKUILocationEditItemModel *)self _removeConferenceAttendeeOnEvent:eventCopy forRowModel:v6];
  if ([v6 locationType] == 1)
  {
    [(EKUILocationEditItemModel *)self _updateConferenceDataOnEvent:eventCopy forNewLocation:0];
  }

  [(EKUILocationEditItemModel *)self _deleteVirtualConferenceOnEvent:eventCopy forRowModel:v6];
  [(NSMutableArray *)self->_rowModels removeObjectAtIndex:index];
  [(EKUILocationEditItemModel *)self _updateLocationsOnEvent:eventCopy];
}

- (int64_t)indexOfPredictedLocation
{
  if (![(NSMutableArray *)self->_rowModels count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(NSMutableArray *)self->_rowModels objectAtIndex:v3];
    locationType = [v4 locationType];

    if (locationType == 3)
    {
      break;
    }

    if (++v3 >= [(NSMutableArray *)self->_rowModels count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (id)_rowModelForCell:(id)cell
{
  v4 = [cell tag];
  if (v4 >= [(NSMutableArray *)self->_rowModels count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_rowModels objectAtIndex:v4];
  }

  return v5;
}

- (void)updateRowModel:(id)model withMapLocation:(id)location event:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  locationCopy = location;
  eventCopy = event;
  v11 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = modelCopy;
    v16 = 2112;
    v17 = locationCopy;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Updating old row model [%@] with new map location: [%@]", &v14, 0x16u);
  }

  if (modelCopy || !locationCopy)
  {
    if (modelCopy && locationCopy)
    {
      [(EKUILocationEditItemModel *)self removeConferenceRoomAttendeeIfNeeded:modelCopy event:eventCopy];
      [modelCopy setLocationType:1];
      [modelCopy setLocation:locationCopy];
      [modelCopy setConference:0];
      [modelCopy setCell:0];
    }
  }

  else
  {
    v12 = [[EKUILocationRowModel alloc] initWithStructuredLocation:locationCopy];
    [(NSMutableArray *)self->_rowModels addObject:v12];
  }

  indexOfPredictedLocation = [(EKUILocationEditItemModel *)self indexOfPredictedLocation];
  if (indexOfPredictedLocation != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EKUILocationEditItemModel *)self removeRowModelAtIndex:indexOfPredictedLocation event:eventCopy];
  }

  [(EKUILocationEditItemModel *)self _updateConferenceDataOnEvent:eventCopy forNewLocation:locationCopy];
  [(EKUILocationEditItemModel *)self _updateLocationsOnEvent:eventCopy];
  CalAnalyticsSendEvent();
}

- (void)updateRowModel:(id)model withVirtualConference:(id)conference event:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  conferenceCopy = conference;
  eventCopy = event;
  v11 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = modelCopy;
    v16 = 2112;
    v17 = conferenceCopy;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Updating old row model [%@] with new virtual conference: [%@]", &v14, 0x16u);
  }

  if (modelCopy)
  {
    [(EKUILocationEditItemModel *)self removeConferenceRoomAttendeeIfNeeded:modelCopy event:eventCopy];
    [modelCopy setLocationType:2];
    [modelCopy setConference:conferenceCopy];
    [modelCopy setLocation:0];
    [modelCopy setCell:0];
  }

  else
  {
    v12 = [EKUILocationRowModel alloc];
    if (conferenceCopy)
    {
      v13 = [(EKUILocationRowModel *)v12 initWithVirtualConference:conferenceCopy];
    }

    else
    {
      v13 = [(EKUILocationRowModel *)v12 initWithPendingConference:0];
    }

    modelCopy = v13;
    [(NSMutableArray *)self->_rowModels addObject:v13];
  }

  [(EKUILocationEditItemModel *)self _updateLocationsOnEvent:eventCopy];
}

- (void)updateRowModel:(id)model withConferenceRoom:(id)room editItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  roomCopy = room;
  itemCopy = item;
  v11 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = modelCopy;
    v29 = 2112;
    v30 = roomCopy;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Updating old row model [%@] with new conference room: [%@]", buf, 0x16u);
  }

  CalAnalyticsSendEvent();
  location = [roomCopy location];
  preferredAddress = [location preferredAddress];

  event = [itemCopy event];
  if (preferredAddress)
  {
    v26 = itemCopy;
    location2 = [roomCopy location];
    displayName = [location2 displayName];

    v25 = [MEMORY[0x1E695DFF8] URLWithString:preferredAddress];
    v17 = [MEMORY[0x1E6966968] attendeeWithName:displayName url:?];
    [v17 setParticipantType:2];
    [event addAttendee:v17];
    v18 = kEKUILogEventEditorHandle;
    if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_DEBUG, "Added conference room as attendee: [%@]", buf, 0xCu);
    }

    v19 = objc_alloc_init(EKUIConferenceRoomInfo);
    [(NSMutableDictionary *)self->_conferenceRoomInfos setObject:v19 forKey:displayName];
    if (modelCopy)
    {
      [(EKUILocationEditItemModel *)self removeConferenceRoomAttendeeIfNeeded:modelCopy event:event];
      [modelCopy setLocationType:0];
      v20 = [MEMORY[0x1E6966B08] locationWithTitle:displayName];
      [modelCopy setLocation:v20];

      [modelCopy setConference:0];
      [modelCopy setCell:0];
      location3 = [modelCopy location];
    }

    else
    {
      v23 = [[EKUILocationRowModel alloc] initWithConferenceRoom:displayName];
      [(NSMutableArray *)self->_rowModels addObject:v23];
      location3 = [(EKUILocationRowModel *)v23 location];
    }

    [(EKUILocationEditItemModel *)self _updateConferenceDataOnEvent:event forNewLocation:location3];
    [(EKUILocationEditItemModel *)self _updateLocationsOnEvent:event];
    v24 = kEKUILogEventEditorHandle;
    if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = displayName;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_DEBUG, "Set structured location based on the new conference room.  Location: [%@]", buf, 0xCu);
    }

    itemCopy = v26;
  }

  else
  {
    v22 = kEKUILogEventEditorHandle;
    if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = roomCopy;
      _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_ERROR, "Could not find conference room's preferred address.  Will not update location.  Conference room: [%@]", buf, 0xCu);
    }
  }

  [(EKUILocationEditItemModel *)self updateAvailabilityInformation:itemCopy];
}

uint64_t __45__EKUILocationEditItemModel_reorderRowModels__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 locationType];
  v7 = [v5 locationType];
  if (v6 | v7)
  {
    if (v6 >= v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    if (v6 <= v7)
    {
      v12 = v13;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v8 = [v4 location];
    v9 = [v8 title];
    v10 = [v5 location];
    v11 = [v10 title];
    v12 = [v9 caseInsensitiveCompare:v11];
  }

  return v12;
}

- (void)updateAvailabilityInformation:(id)information
{
  informationCopy = information;
  conferenceRoomInfos = self->_conferenceRoomInfos;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke;
  v7[3] = &unk_1E843FC60;
  v7[4] = self;
  v8 = informationCopy;
  v6 = informationCopy;
  [(NSMutableDictionary *)conferenceRoomInfos enumerateKeysAndObjectsUsingBlock:v7];
}

void __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [v6 setAvailabilitySpans:0];
  v7 = [v6 availabilityRequest];
  [v7 cancel];

  [v6 setAvailabilityRequest:0];
  if ([*(*(a1 + 32) + 8) count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [*(*(a1 + 32) + 8) objectAtIndex:v8];
      if (![v9 locationType])
      {
        v10 = *(a1 + 32);
        v11 = [v9 location];
        v12 = [v10 _conferenceRoomNameForLocation:v11];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          break;
        }
      }

      if (++v8 >= [*(*(a1 + 32) + 8) count])
      {
        goto LABEL_6;
      }
    }

    v40 = [v9 cell];

    if (!v40)
    {
      v41 = [*(a1 + 40) cellForSubitemAtIndex:v8];
    }

    v42 = [v9 cell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v42;
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
LABEL_6:
    v54 = 0;
  }

  v14 = [*(a1 + 40) event];
  v15 = [*(a1 + 32) _participantForConferenceRoomName:v5 event:v14];
  v16 = v15;
  if (!v15)
  {
    v36 = kEKUILogEventEditorHandle;
    if (!os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v37 = "There is no conference room on this event.  Will not issue an availability request.";
    v38 = v36;
    v39 = 2;
LABEL_18:
    _os_log_impl(&dword_1D3400000, v38, OS_LOG_TYPE_DEBUG, v37, buf, v39);
    goto LABEL_30;
  }

  v17 = [v15 needsResponse];
  v18 = kEKUILogEventEditorHandle;
  v19 = os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG);
  if ((v17 & 1) == 0)
  {
    if (!v19)
    {
      goto LABEL_30;
    }

    *buf = 138412290;
    v66 = v16;
    v37 = "The conference room has already responded.  Will not issue an availability request.  Room: [%@]";
    v38 = v18;
    v39 = 12;
    goto LABEL_18;
  }

  if (v19)
  {
    v20 = MEMORY[0x1E696AD98];
    v21 = v18;
    v22 = [v20 numberWithInteger:{objc_msgSend(v16, "participantStatus")}];
    *buf = 138412546;
    v66 = v22;
    v67 = 2112;
    v68 = v16;
    _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_DEBUG, "This event's room's participation status is [%@].  It is a candidate for an availability request.  Room: [%@]", buf, 0x16u);
  }

  v23 = [v16 URL];
  v53 = [v23 absoluteString];

  v24 = [*(a1 + 40) event];
  v25 = [v24 calendar];
  v26 = [v25 source];
  v27 = [v26 constraints];
  v28 = [v27 supportsAvailabilityRequests];

  if (v28)
  {
    if (v53)
    {
      v29 = [v14 calendar];
      v52 = [v29 source];

      v51 = [v14 startDate];
      v50 = [v14 endDateUnadjustedForLegacyClients];
      v30 = objc_alloc(MEMORY[0x1E6966AE0]);
      v64 = v53;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_110;
      v61[3] = &unk_1E843FCD0;
      v62 = v53;
      v32 = v6;
      v63 = v32;
      v33 = [v30 initWithSource:v52 startDate:v51 endDate:v50 ignoredEvent:v14 addresses:v31 resultsBlock:v61];
      [v32 setAvailabilityRequest:v33];

      objc_initWeak(buf, *(a1 + 32));
      objc_initWeak(&location, v32);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_3;
      v55[3] = &unk_1E843FCF8;
      objc_copyWeak(&v58, buf);
      objc_copyWeak(&v59, &location);
      v56 = v54;
      v57 = v14;
      v34 = [v32 availabilityRequest];
      [v34 setCompletionBlock:v55];

      v35 = [v32 availabilityRequest];
      [v35 start];

      objc_destroyWeak(&v59);
      objc_destroyWeak(&v58);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v47 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        v48 = v47;
        v49 = [v16 URL];
        *buf = 138412290;
        v66 = v49;
        _os_log_impl(&dword_1D3400000, v48, OS_LOG_TYPE_DEBUG, "The conference room's address is nil.  Will not issue an availability request.  URL: [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    v43 = kEKUILogEventEditorHandle;
    if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
    {
      v44 = v43;
      v45 = [v14 calendar];
      v46 = [v45 source];
      *buf = 138412290;
      v66 = v46;
      _os_log_impl(&dword_1D3400000, v44, OS_LOG_TYPE_DEBUG, "This event's source does not support availability requests.  Will not send out an availability request.  Source: [%@]", buf, 0xCu);
    }
  }

LABEL_30:
  [*(a1 + 32) refreshConferenceRoomCell:v54 event:{v14, v50}];
}

void __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_2;
  v5[3] = &unk_1E843EFB8;
  v6 = *(a1 + 40);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_3(id *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_4;
  v2[3] = &unk_1E843FCF8;
  objc_copyWeak(&v5, a1 + 6);
  objc_copyWeak(&v6, a1 + 7);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __59__EKUILocationEditItemModel_updateAvailabilityInformation___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = kEKUILogEventEditorHandle;
    if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = [v4 availabilityRequest];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Availability request completed: [%@]", &v11, 0xCu);
    }

    [v4 setAvailabilityRequest:0];
    v8 = MEMORY[0x1E6966988];
    v9 = [v4 availabilitySpans];
    v10 = [v8 summarizedAvailabilityTypeForSpans:v9];

    [v4 setAvailabilityType:v10];
    [WeakRetained refreshConferenceRoomCell:*(a1 + 32) event:*(a1 + 40)];
  }
}

- (id)_conferenceRoomNameForLocation:(id)location
{
  v3 = MEMORY[0x1E6992FD8];
  locationCopy = location;
  title = [locationCopy title];
  address = [locationCopy address];

  v7 = [v3 fullDisplayStringWithTitle:title address:address];

  return v7;
}

- (id)_participantForConferenceRoomName:(id)name event:(id)event
{
  nameCopy = name;
  eventCopy = event;
  attendees = [eventCopy attendees];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__EKUILocationEditItemModel__participantForConferenceRoomName_event___block_invoke;
  v11[3] = &unk_1E843FD20;
  v8 = nameCopy;
  v12 = v8;
  v13 = &v14;
  [attendees enumerateObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __69__EKUILocationEditItemModel__participantForConferenceRoomName_event___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 participantType] == 2)
  {
    v7 = [v9 name];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)refreshConferenceRoomCell:(id)cell event:(id)event
{
  cellCopy = cell;
  eventCopy = event;
  v7 = [(EKUILocationEditItemModel *)self _rowModelForCell:cellCopy];
  v8 = v7;
  if (v7 && ![v7 locationType])
  {
    location = [v8 location];
    v9 = [(EKUILocationEditItemModel *)self _conferenceRoomNameForLocation:location];
    v10 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\n"];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    conferenceRoomInfos = [(EKUILocationEditItemModel *)self conferenceRoomInfos];
    v13 = [conferenceRoomInfos objectForKey:v9];

    availabilityRequest = [v13 availabilityRequest];
    v15 = availabilityRequest != 0;

    calendar = [eventCopy calendar];
    source = [calendar source];
    constraints = [source constraints];
    [cellCopy updateWithName:v11 sourceSupportsAvailability:objc_msgSend(constraints availabilityRequestInProgress:"supportsAvailabilityRequests") availabilityType:{v15, objc_msgSend(v13, "availabilityType")}];
  }
}

- (BOOL)shouldDisplayRowModelWithConferenceCell:(id)cell event:(id)event
{
  cellCopy = cell;
  eventCopy = event;
  if ([cellCopy locationType])
  {
    supportsAvailabilityRequests = 0;
  }

  else
  {
    location = [cellCopy location];
    v10 = [(EKUILocationEditItemModel *)self _conferenceRoomNameForLocation:location];

    v11 = [(NSMutableDictionary *)self->_conferenceRoomInfos objectForKey:v10];
    v12 = [(EKUILocationEditItemModel *)self _participantForConferenceRoomName:v10 event:eventCopy];
    v13 = v12;
    supportsAvailabilityRequests = 0;
    if (v11 && v12)
    {
      if (EKUIAttendeeUtils_AttendeeHasResponded(v12))
      {
        supportsAvailabilityRequests = 0;
      }

      else
      {
        calendar = [eventCopy calendar];
        source = [calendar source];
        constraints = [source constraints];
        supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];
      }
    }
  }

  return supportsAvailabilityRequests;
}

- (void)removeConferenceRoomAttendeeIfNeeded:(id)needed event:(id)event
{
  neededCopy = needed;
  eventCopy = event;
  if ([(EKUILocationEditItemModel *)self rowModelRepresentsConferenceRoom:neededCopy onEvent:eventCopy])
  {
    [(EKUILocationEditItemModel *)self _removeConferenceAttendeeOnEvent:eventCopy forRowModel:neededCopy];
  }
}

- (BOOL)rowModelRepresentsConferenceRoom:(id)room onEvent:(id)event
{
  roomCopy = room;
  eventCopy = event;
  if ([roomCopy locationType])
  {
    location = [roomCopy location];

    if (location)
    {
      location2 = [roomCopy location];
      [(EKUILocationEditItemModel *)self _conferenceRoomNameForLocation:location2];
    }

    else
    {
      location2 = [roomCopy conference];
      [location2 serializationBlockTitle];
    }
    v11 = ;

    v12 = [(EKUILocationEditItemModel *)self _participantForConferenceRoomName:v11 event:eventCopy];
    v10 = v12 != 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end