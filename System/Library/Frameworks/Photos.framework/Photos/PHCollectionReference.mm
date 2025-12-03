@interface PHCollectionReference
- (PHCollectionReference)initWithDictionary:(id)dictionary referenceType:(id)type;
- (PHCollectionReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l transientIdentifier:(id)transientIdentifier transientTitle:(id)title;
- (id)dictionaryForReferenceType:(id)type;
@end

@implementation PHCollectionReference

- (id)dictionaryForReferenceType:(id)type
{
  v8.receiver = self;
  v8.super_class = PHCollectionReference;
  v4 = [(PHObjectReference *)&v8 dictionaryForReferenceType:type];
  if ([(PHCollectionReference *)self transient])
  {
    transientIdentifier = [(PHCollectionReference *)self transientIdentifier];
    [v4 setObject:transientIdentifier forKeyedSubscript:@"transientIdentifier"];

    transientTitle = [(PHCollectionReference *)self transientTitle];
    [v4 setObject:transientTitle forKeyedSubscript:@"transientTitle"];
  }

  return v4;
}

- (PHCollectionReference)initWithDictionary:(id)dictionary referenceType:(id)type
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PHCollectionReference;
  v7 = [(PHObjectReference *)&v15 initWithDictionary:dictionaryCopy referenceType:type];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"transientIdentifier"];
    v9 = [v8 copy];
    transientIdentifier = v7->_transientIdentifier;
    v7->_transientIdentifier = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"transientTitle"];
    v12 = [v11 copy];
    transientTitle = v7->_transientTitle;
    v7->_transientTitle = v12;
  }

  return v7;
}

- (PHCollectionReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l transientIdentifier:(id)transientIdentifier transientTitle:(id)title
{
  transientIdentifierCopy = transientIdentifier;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = PHCollectionReference;
  v12 = [(PHObjectReference *)&v18 initWithLocalIdentifier:identifier libraryURL:l];
  if (v12)
  {
    v13 = [transientIdentifierCopy copy];
    transientIdentifier = v12->_transientIdentifier;
    v12->_transientIdentifier = v13;

    v15 = [titleCopy copy];
    transientTitle = v12->_transientTitle;
    v12->_transientTitle = v15;
  }

  return v12;
}

@end