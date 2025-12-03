@interface EKRemoteUIObjectSerializer
- (id)deserializedRepresentationWithSerializedDictionary:(id)dictionary objectIDToChangeSetDictionaryMap:(id)map objectIDToPersistentDictionaryMap:(id)dictionaryMap eventStore:(id)store occurrenceDate:(id)date;
- (id)serializedRepresentationWithEkObject:(id)object;
- (id)serializedRepresentationWithEkObject:(id)object obfuscateKeyProperties:(BOOL)properties;
@end

@implementation EKRemoteUIObjectSerializer

- (id)serializedRepresentationWithEkObject:(id)object obfuscateKeyProperties:(BOOL)properties
{
  v16 = MEMORY[0x1E69E7CC8];
  v17 = MEMORY[0x1E69E7CC8];
  objectCopy = object;
  selfCopy = self;
  v8 = sub_1A8189CFC(objectCopy, properties, &v17, &v16);
  v10 = v16;
  v9 = v17;
  v11 = type metadata accessor for EKRemoteUISerializedObject();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = v8;
  *&v12[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = v9;
  *&v12[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = v10;
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = [(EKRemoteUIObjectSerializer *)&v15 init];

  return v13;
}

- (id)serializedRepresentationWithEkObject:(id)object
{
  v14 = MEMORY[0x1E69E7CC8];
  v15 = MEMORY[0x1E69E7CC8];
  objectCopy = object;
  selfCopy = self;
  v6 = sub_1A8189CFC(objectCopy, 0, &v15, &v14);
  v8 = v14;
  v7 = v15;
  v9 = type metadata accessor for EKRemoteUISerializedObject();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = v6;
  *&v10[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = v7;
  *&v10[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = v8;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(EKRemoteUIObjectSerializer *)&v13 init];

  return v11;
}

- (id)deserializedRepresentationWithSerializedDictionary:(id)dictionary objectIDToChangeSetDictionaryMap:(id)map objectIDToPersistentDictionaryMap:(id)dictionaryMap eventStore:(id)store occurrenceDate:(id)date
{
  selfCopy = self;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1A81ACC94();
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
  sub_1A819550C(&qword_1EB2E2828, &qword_1EB2E2650, off_1E77FBA00);
  v14 = sub_1A81ACC94();
  v15 = sub_1A81ACC94();
  if (date)
  {
    sub_1A81ACA44();
    v16 = sub_1A81ACA54();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  }

  else
  {
    v17 = sub_1A81ACA54();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  storeCopy = store;
  v19 = selfCopy;
  v20 = EKRemoteUIObjectSerializer.deserializedRepresentation(serializedDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:eventStore:occurrenceDate:)(v13, v14, v15, storeCopy, v12);

  sub_1A8188C34(v12, &unk_1EB2E2810, &qword_1A81C4330);

  return v20;
}

@end